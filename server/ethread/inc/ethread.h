#ifndef ETHREAD_H
#define ETHREAD_H

#include <string>
#include <thread>
#include <functional>
#include <memory>
#include <pthread.h>

namespace server {



class EThread{
public:
    typedef std::shared_ptr<EThread> ptr;
    EThread(std::function<void()> cb, const std::string& name);
    ~EThread();
    
    std::thread::id getId() const {return m_id;}
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
    std::thread::id m_id;
    std::thread m_thread;
    std::function<void()> m_cb;
    std::string m_name;

};

}

#endif
