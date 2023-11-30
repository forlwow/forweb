#include "ethread.h"
#include "log.h"
#include <functional>
#include <memory>
#include <pthread.h>
#include <stdexcept>
#include <thread>


namespace server {

static Logger::ptr g_logger = CreateStdLogger("system");

static thread_local EThread* t_thread = nullptr;
static thread_local std::string t_thread_name = "UNKNOW";

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

EThread::EThread(std::function<void()> cb, const std::string& name){
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
    thread->m_id = std::this_thread::get_id();
    pthread_setname_np(pthread_self(), thread->m_name.substr(0, 15).c_str());

    std::function<void()> cb;
    cb.swap(thread->m_cb);
    return 0;
}

void EThread::join(){
    if(m_thread.joinable())
        m_thread.joinable();
}

}
