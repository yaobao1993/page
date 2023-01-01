.PHONY: all clean third third_clean

MAKE = make

all:
	@$(MAKE) third
clean:
	@$(MAKE) third_clean

third:
	@cd third; $(MAKE)
third_clean:
	@cd third; $(MAKE) clean
