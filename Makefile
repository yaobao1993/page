.PHONY: all clean third third_clean src src_clean

MAKE = make

all:
	@$(MAKE) third
	@$(MAKE) src
clean:
	@$(MAKE) third_clean
	@$(MAKE) src_clean

third:
	@cd third; $(MAKE)
third_clean:
	@cd third; $(MAKE) clean

src:
	@cd src; erlc *.erl
src_clean:
	@cd src; rm -f *.beam
