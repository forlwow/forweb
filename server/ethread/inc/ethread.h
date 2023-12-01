#ifndef ETHREAD_H
#define ETHREAD_H

#include <cstdint>
#include <string>
#include <thread>
#include <functional>
#include <memory>
#include <pthread.h>

namespace server {

class Semaphore{
public:
    Semaphore(uint32_t count = 0);
    ~Semaphore();
    void wait();
    void notify();

private:
    Semaphore(const Semaphore&)=delete;
    Semaphore(const Semaphore&&)=delete;
    Semaphore& operator=(const Semaphore&)=delete;
    Semaphore& operator=(const Semaphore&&)=delete;
};


class EThread;

extern thread_local EThread* t_thread;
extern thread_local std::string t_thread_name;
extern thread_local int t_thread_id;

class EThread{
public:
    typedef std::shared_ptr<EThread> ptr;
    EThread(std::function<void()> cb, const std::string& name);
    ~EThread();
    
    int getId() const {return m_id;}
    const std::string& getName() const {return m_name;}

    void join();
    static EThread* GetThis();
    static const std::string& GetName();
    static void SetName(const std::string& name);

private:
    EThread(const EThread&)=delete;
    EThread(const EThread&&)=delete;
    EThread& operator=(const EThread&)=delete;
    EThread& operator=(const EThread&&)=delete;

    static void* run(void *arg);
private:
    int m_id;
    std::thread m_thread;
    std::function<void()> m_cb;
    std::string m_name;

};

}

#endif
