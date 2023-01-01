.PHONY: all clean cowboy cowboy_clean

MAKE = make

all:
	@$(MAKE) cowboy
clean:
	@$(MAKE) cowboy_clean

COWBOY_PATH = cowboy-2.9.0
cowboy:
	@echo "Making Cowboy..."
	@cd $(COWBOY_PATH); $(MAKE)
cowboy_clean:
	@echo "Cleaning Cowboy..."
	@cd $(COWBOY_PATH); $(MAKE) clean
