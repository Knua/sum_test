# target dependency
# 	command

# 최상단의 all target 은 암묵적 약속
all: sum_test

# target 이 빌드되기 위해 command 명령어가 실행되는 조건 -> dependency 의 날짜가 target 보다 최신인 경우
sum_test: main.o sum.o
	g++ -o sum_test main.o sum.o

sum.o: sum.cpp sum.h
	g++ -c -o sum.o sum.cpp

main.o: main.cpp sum.h
	g++ -c -o main.o main.cpp

# 최하단의 clean target 또한 암묵적 약속
clean:
	rm -f sum_test *.o
