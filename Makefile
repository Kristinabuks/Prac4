all: hello

hello: main.o diff.o hello.o sum.o
	g++ main.o diff.o hello.o sum.o function.h -o hello

main.o: main.o
	g++ -c main.cpp function.h

diff.o: diff.o
	g++ -c diff.cpp function.h

hello.o: hello.o
	g++ -c hello.cpp function.h

sum.o: sum.o
	g++ -c sum.cpp function.h

clean:
	rm -rf *.o hello

install:
	cp hello /usr/bin

uninstall:
	rm /usr/bin/hello
