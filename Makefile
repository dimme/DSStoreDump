install:
	@chmod +x DSStoreDump.py
	@cp DSStoreDump.py /usr/local/bin/DSStoreDump
	@echo "DSStoreDump installed successfully."

uninstall:
	@rm -f /usr/local/bin/DSStoreDump
	@echo "DSStoreDump uninstalled successfully."
