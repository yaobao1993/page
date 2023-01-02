.PHONY: all clean cowboy cowboy_clean gun gun_clean

MAKE = make

all:
	@$(MAKE) cowboy
	@$(MAKE) gun
clean:
	@$(MAKE) cowboy_clean
	@$(MAKE) gun_clean

COWBOY_PATH = cowboy-2.9.0
cowboy:
	@echo "Make Cowboy..."
	@cd $(COWBOY_PATH); rm -f ebin/cowboy.app; $(MAKE)
cowboy_clean:
	@echo "Clean Cowboy..."
	@cd $(COWBOY_PATH); $(MAKE) distclean

GUN_PATH = gun-1.3.3
gun:
	@echo "Make Gun..."
	@cd $(GUN_PATH); rm -f ebin/gun.app; $(MAKE)
gun_clean:
	@echo "Clean Gun..."
	@cd $(GUN_PATH); $(MAKE) distclean
