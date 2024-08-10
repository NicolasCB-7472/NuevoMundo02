CFLAGS = -O3 -Wall -Werror

MANEJADORES = ManejadorUsuario.o 
CONTROLADORES = ControladorUsuario.o
INTERFACES = iControladorUsuario.o

todo: main.o Fabrica.o $(MANEJADORES) $(CONTROLADORES) $(INTERFACES)
	g++ $(MANEJADORES) $(CONTROLADORES) $(INTERFACES) Fabrica.o main.o -o Salida.exe

main.o: main.cpp
	g++ -c main.cpp $(CFLAGS)

Fabrica.o: Fabrica.cpp
	g++ -c Fabrica.cpp $(CFLAGS)

ManejadorUsuario.o: ManejadorUsuario.cpp
	g++ -c ManejadorUsuario.cpp $(CFLAGS)

ControladorUsuario.o: ControladorUsuario.cpp
	g++ -c ControladorUsuario.cpp $(CFLAGS)

iControladorUsuario.o: iControladorUsuario.cpp
	g++ -c iControladorUsuario.cpp $(CFLAGS)

clean:
	rm *.o Salida.exe $(CFLAGS)
	cls
