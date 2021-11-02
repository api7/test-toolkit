### help:         Show Makefile rules
.PHONY: help
help:
	@echo Makefile rules:
	@echo
	@grep -E '^### [-A-Za-z0-9_]+:' Makefile | sed 's/###/   /'

### lint:             Lint Lua source code
.PHONY: lint
lint:
	luacheck .

### test:             Test
.PHONY: test
test:
	# luarocks install busted
	busted .
