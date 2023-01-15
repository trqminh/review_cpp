# Rules
all: compile linker

compile:
	g++ -I include/ -c src/point.cpp -o objs/point.o
	g++ -I include/ -c src/main.cpp -o objs/main.o

linker:
	g++ objs/*.o -o bin/program

clean:
	rm -rf bin/program objs/*.o
