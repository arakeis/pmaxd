# build helloworld executable when user executes "make"
all: pmaxd xplsendjson testpmaxd
pmaxd: pmaxd.o
	$(CC) $(LDFLAGS) pmaxd.o -o pmaxd -lconfig
pmaxd.o: pmaxd.c
	$(CC) $(CFLAGS) -c pmaxd.c 
testpmaxd: testpmaxd.o
	$(CC) $(LDFLAGS) testpmaxd.o -o testpmaxd -lconfig
testpmaxd.o: testpmaxd.c
	$(CC) $(CFLAGS) -c testpmaxd.c
		
	
	

# remove object files and executable when user executes "make clean"
clean:
	rm *.o pmaxd testpmaxd
