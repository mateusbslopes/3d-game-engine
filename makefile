include .env
export 

CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXi 

all: build run clean

build: main.cpp
	g++ $(CFLAGS) -o main main.cpp $(LDFLAGS)

run: main
	./main

clean:
	rm -f main