.PHONY: all clean third third_clean src ebin_clean

MAKE = make

all:
	@$(MAKE) third
	@$(MAKE) src
clean:
	@$(MAKE) third_clean
	@$(MAKE) ebin_clean

third:
	@cd third; $(MAKE)
third_clean:
	@cd third; $(MAKE) clean

src:
	@cd src; erlc -o ../ebin *.erl
ebin_clean:
	@cd ebin; rm -f *.beam
