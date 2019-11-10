all: main libfunctions.a

main: main.o factorial.o hello.o
	g++ main.o factorial.o hello.o -o main

main.o: main.cpp
	g++ -c main.cpp

factorial.o: factorial.cpp
	g++ -c factorial.cpp

hello.o: hello.cpp
	g++ -c hello.cpp

libfunctions.a: main.o factorial.o hello.o
	ar rcs libfunctions.a main.o factorial.o hello.o

clean:
	rm -rf *.o main libfunctions.a
