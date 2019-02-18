CFLAGS=-Wall -O3
LDFLAGS= -lm
# Xlib flags needed for mac
#-lX11 -L/usr/X11/lib -I/usr/X11/include

galsim: galaxy_without_graphics.c
	gcc $(CFLAGS) $(INCLUDES) -c galaxy_without_graphics.c
	gcc -o galsim galaxy_without_graphics.o $(LDFLAGS)

clean:
	rm -f ./galsim *.o
