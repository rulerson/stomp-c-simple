
AR = ar
ARFLAGS = rcs
CXX = gcc
CXXFLAGS = -g -Wall
LDFLAGS = 
STOMPLIB = libstomp.a
OBJ_FILES = frame.o hdr.o stomp.o err_r.o

$(STOMPLIB): $(OBJ_FILES)
	$(AR) $(ARFLAGS) $@ $(OBJ_FILES)

%.o: %.c
	$(CXX) -c $(CXXFLAGS) -o $@ $< 

.PHONY: clean
clean: 
	rm -f $(STOMPLIB) $(OBJ_FILES)
