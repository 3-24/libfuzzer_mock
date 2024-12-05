.PHONY: all clean

all: libfuzzer.a

libfuzzer.a: StandaloneFuzzTargetMain.c
	gclang -O0 -g StandaloneFuzzTargetMain.c -c -fPIC -o StandaloneFuzzTargetMain.o
	ar r libfuzzer.a StandaloneFuzzTargetMain.o

clean:
	rm -f *.a *.o