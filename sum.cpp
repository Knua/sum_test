#include "sum.h" // <> vs "" -> 시스템 헤더 파일 vs 현재 폴더에 있는 파일

int sum(int n) {
    int result = 0;
    for(int i = 0; i < n; i++){
        result += (i + 1);
    }
    return result;
}
