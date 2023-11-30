#ifndef RANGE_H
#define RANGE_H

#include <coroutine>

struct CoRet{
    struct promise_type{
        int n;
        std::suspend_never initial_suspend() const noexcept {return {};}
        std::suspend_always final_suspend() const noexcept {return {};}
        void unhandled_exception() {}
        CoRet get_return_object(){
            return {std::coroutine_handle<promise_type>::from_promise(*this)};
        }
        std::suspend_always yield_value(int r){
            n = r;
            return {};
        }
        void return_void(){}
    };

    struct iterator{
        std::coroutine_handle<promise_type>& h;
        int& operator*() {
            return h.promise().n;
        }
        iterator operator++(){
            if (!h.done())
                h.resume();
            return *this;
        }
        bool operator!=(const iterator&) const{
            return !h.done();
        }
    };
    
    iterator begin() {return {_h};}
    iterator end() {return {_h};}
    std::coroutine_handle<promise_type> _h;
};

CoRet _range(int begin, int end, int step);

CoRet range(int end); 
CoRet range(int begin, int end);
CoRet range(int begin, int end, int step);


#endif
