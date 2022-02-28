#original
default:
	g++ ./src/main.cpp -o ./build/main.exe -O2 -Wall -Wno-missing-braces -Wunused-result -g -I./src/include/ -L./src/lib/ -lraylib -lopengl32 -lgdi32 -lwinmm