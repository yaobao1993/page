.PHONY: all clean third third_clean build build_clean

MAKE = make

all:
	@$(MAKE) third
	@$(MAKE) build
clean:
	@$(MAKE) third_clean
	@$(MAKE) build_clean

third:
	@cd third; $(MAKE)
third_clean:
	@cd third; $(MAKE) clean

build:
	@cd build; mkdir -p ebin
	@cd src; erlc -o ../build/ebin *.erl
build_clean:
	@cd build; rm -rf ebin
