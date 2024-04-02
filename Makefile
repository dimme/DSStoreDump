install:
	@chmod +x DSStoreDump
	@cp DSStoreDump /usr/local/bin/DSStoreDump
	@echo "DSStoreDump installed successfully."

uninstall:
	@rm -f /usr/local/bin/DSStoreDump
	@echo "DSStoreDump uninstalled successfully."
