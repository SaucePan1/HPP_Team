CFLAGS=-Wall
LDFLAGS= -lm

galaxy_without_graphics: galaxy_without_graphics.o
	gcc -o galaxy_wo_graphics galaxy_without_graphics.o $(LDFLAGS)

galaxy_without_graphics.o: galaxy_without_graphics.c
	gcc $(CFLAGS) $(INCLUDES) -c galaxy_without_graphics.c

compare: galaxy_wo_graphics
	./galaxy_wo_graphics 10 ellipse_N_00010.gal 200 0.00001 0
	mv output.gal ./compare_gal_files
	./compare_gal_files/compare 10 ellipse_N_00010.gal ./compare_gal_files/output.gal

clean:
	rm -f ./galaxy_wo_graphics *.o
	rm -f *.txt
