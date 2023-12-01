#include "ethread.h"
#include "log.h"
#include <functional>
#include <memory>
#include <pthread.h>
#include <stdexcept>
#include <sys/syscall.h>
#include <thread>
#include <unistd.h>


namespace server {

static Logger::ptr g_logger = CreateStdLogger("system");

thread_local EThread* t_thread = nullptr;
thread_local std::string t_thread_name = "UNKNOW";
thread_local int t_thread_id = -1;

EThread* EThread::GetThis(){
    return t_thread;
}

const std::string& EThread::GetName(){
    return t_thread_name;
}

void EThread::SetName(const std::string &name){
    if (t_thread){
        t_thread->m_name = name;
    }
    t_thread_name = name;
}

EThread::EThread(std::function<void()> cb, const std::string& name)
    :m_cb(cb), m_name(name)
{
    if (name.empty()){
        m_name = "UNKNOW";
    }
    m_thread = std::thread(&EThread::run, this);
    if(!m_thread.joinable()){
        SERVER_LOG_ERROR(g_logger) << "create thread error";
        throw std::logic_error("thread create error");
    }
}

EThread::~EThread(){
    if(m_thread.joinable())
        m_thread.join();
}

void* EThread::run(void *arg){
    EThread* thread = (EThread*)arg;

    t_thread = thread;
    t_thread_name = thread->m_name;
    t_thread_id = syscall(SYS_gettid);
    pthread_setname_np(pthread_self(), thread->m_name.substr(0, 15).c_str());

    thread->m_id = t_thread_id;

    std::function<void()> cb;
    cb.swap(thread->m_cb);
    cb();
    return 0;
}

void EThread::join(){
    if(m_thread.joinable())
        m_thread.joinable();
}

}
