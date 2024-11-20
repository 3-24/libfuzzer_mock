.PHONY: all clean

all: libFuzzer.a

libFuzzer.a: StandaloneFuzzTargetMain.c
	gclang StandaloneFuzzTargetMain.c -c -fPIC -o StandaloneFuzzTargetMain.o
	ar r libFuzzer.a StandaloneFuzzTargetMain.o

clean:
	rm -f *.a *.o