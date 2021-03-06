DOCKER=$(shell if [ "$(which adocker)" ]; then which adocker; else which docker; fi)

.PHONY: all
all:
	adocker build -t gullitmiranda/elixir 1.0.5
	adocker build -t gullitmiranda/elixir:1.0.5 1.0.5
	adocker build -t gullitmiranda/elixir:1.0.4 1.0.4

.PHONY: no-cache
no-cache:
	adocker build --rm --no-cache -t gullitmiranda/elixir 1.0.5
	adocker build --rm --no-cache -t gullitmiranda/elixir:1.0.5 1.0.5
	adocker build --rm --no-cache -t gullitmiranda/elixir:1.0.4 1.0.4
