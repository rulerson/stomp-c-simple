
INSTALL_DIR = $(shell pwd)/bin
SUBALL = examples examples-h src

.PHONY: all $(addsuffix _make, $(SUBALL)) clean $(addsuffix _clean, $(SUBALL))


# make

all: $(addsuffix _make, $(SUBALL))

src_make: 
	make -C src/

examples_make: 
	make -C examples/


# clean

clean: $(addsuffix _clean, $(SUBALL))

src_clean:
	make -C src/ clean

examples_clean:
	make -C examples/ clean

