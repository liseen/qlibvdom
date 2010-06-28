prefix=/opt/qcrawler-thirdparty

.PHONY: all clean distclean

CC=g++
CPPFLAGS=-g -O2 -I/opt/qcrawler-thirdparty/include
LIBS=-L/opt/qcrawler-thirdparty/lib

MODULES		= libvdom.so

all: $(MODULES)

$(MODULES):  vdom.cpp vdom.h
	$(CC) $(CPPFLAGS) $(LIBS) -Wall -lprotobuf -fPIC -shared -o $@ $<
	
clean:
	rm -f *.o

distclean:
	rm -f *.o $(MODULES)

install: all
	test -d $(prefix) || mkdir -p $(prefix)
	test -d $(prefix)/include || mkdir -p $(prefix)/include
	test -d $(prefix)/lib || mkdir -p $(prefix)/lib
	cp *.h $(prefix)/include/
	cp $(MODULES) $(prefix)/lib/
