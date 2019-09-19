#include <stdio.h>
#include "sum.h"

int main()
{
    int s = sum(100);
    printf("sum = %d\n", s);
    // main 함수의 경우"만" return 0; 없는 경우에 컴파일러가 알아서 넣어 준다.
}
