.PHONY: install man uninstall

PREFIX := $(HOME)/.local

install: $(PREFIX)/bin/tunet_bash

$(PREFIX)/bin/tunet_bash: tunet_bash.sh
	@mkdir -p $(PREFIX)/bin
	@cp tunet_bash.sh $(PREFIX)/bin/tunet_bash
	@chmod 755 $(PREFIX)/bin/tunet_bash
	@echo "installed to $(PREFIX)"

uninstall:
	@rm -f $(PREFIX)/bin/tunet_bash

man: tunet_bash.1.gz

tunet_bash.1.gz: man/tunet_bash.1.scd
	@scdoc < man/tunet_bash.1.scd > tunet_bash.1
	@gzip tunet_bash.1 -f
