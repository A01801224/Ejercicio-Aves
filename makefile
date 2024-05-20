all: aguila

aguila: aguila.o ave.o
    g++ -o aguila aguila.o ave.o

aguila.o: aguila.h aguila.cpp
    g++ -c aguila.cpp

ave.o: ave.h ave.cpp
    g++ -c ave.cpp

clean:
    rm -f *.o aguila
