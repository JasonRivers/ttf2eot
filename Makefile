build: ttf2eot

install: build

	cp ttf2eot /usr/bin

ttf2eot: OpenTypeUtilities.o ttf2eot.o

	g++ -Wno-multichar -O3 -o $@ $^

	strip $@

OpenTypeUtilities.o: OpenTypeUtilities.cpp

	g++ -Wno-multichar -O3 -c -o $@ $^

ttf2eot.o: ttf2eot.cpp

	g++ -Wno-multichar -O3 -c -o $@ $^

clean:

	rm -f ttf2eot OpenTypeUtilities.o ttf2eot.o
