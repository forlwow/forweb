#include <range.h>


CoRet _range(int begin, int end, int step){
   while (begin < end){
        co_yield begin;
        begin += step;
   }
   co_return;
}

CoRet range(int end) {return _range(0, end, 1);}
CoRet range(int begin, int end){return _range(begin, end, 1);}
CoRet range(int begin, int end, int step){return _range(begin, end, step);}
