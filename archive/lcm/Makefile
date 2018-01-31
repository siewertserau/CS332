INCLUDE_DIRS = 
LIB_DIRS = 
CC=gcc
AS=as

CDEFS=
CFLAGS= -O0 $(INCLUDE_DIRS) $(CDEFS)
ASFLAGS= $(INCLUDE_DIRS)
LIBS= 

HFILES= lcmwrapper.h
CFILES= lcmwrapper.c lcmc.c

ASMFILES= lcmx86.s

SRCS= ${HFILES} ${CFILES}
OBJS= ${CFILES:.c=.o}
AOBJS= ${ASMFILES:.s=.o}

all:	lcmwrapper lcmc lcmc.asm

clean:
	-rm -f *.o *.d
	-rm -f lcmwrapper lcmc

distclean:
	-rm -f *.o *.d

lcmc: ${OBJS}
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ ${OBJS} $(LIBS)

lcmwrapper: ${AOBJS} lcmwrapper.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ ${AOBJS} lcmwrapper.o $(LIBS)

lcmc.asm: lcmc.c
	$(CC) -O0 -S $< -o $@

depend:

.c.o: 
	$(CC) $(CFLAGS) -c $<

.s.o: 
	$(AS) $(ASFLAGS) $< -o $@
