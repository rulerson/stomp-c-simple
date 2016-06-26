
CXX = gcc
STOMPDIR = ../src
STOMPLIB = $(STOMPDIR)/libstomp.a
LDFLAGS = -lrt
CXXFLAGS = -Wall -I$(STOMPDIR)

PROGRAMS = listener publisher

.PHONY: all clean $(STOMPLIB)

all: $(PROGRAMS)

%: %.c $(STOMPLIB)
	$(CXX) $(CXXFLAGS) -o $@ $< $(LDFLAGS) $(STOMPLIB)

$(STOMPLIB):
	make -C $(STOMPDIR)

clean: 
	rm -f $(PROGRAMS) *.o

