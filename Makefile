INCLUDES = -I /usr/local/include -I lib/jsoncons/include -I include
DOWNLOAD = wget
NAME     = json2csv
STD      = -std=c++1z
CC       = c++

default: cli

all: tests cli

cli:
	$(CC) $(STD) $(INCLUDES) src/$(NAME).cpp -o bin/$(NAME)

cli-debug:
	$(CC) -g $(STD) $(INCLUDES) src/$(NAME).cpp -o bin/$(NAME)

deps:
	git clone --depth 1 https://github.com/danielaparker/jsoncons.git lib/jsoncons

test_deps:
	cd test
	$(DOWNLOAD) https://github.com/philsquared/Catch/releases/download/v1.7.0/catch.hpp

_tests:
	$(CC) $(STD) -I . $(INCLUDES) src/$(NAME).cpp test/tests.cpp -o bin/tests

tests:
	./test/test.sh
	echo "\033[0;32m ********** Tests Pass ********** \033[0m"

clean:
	rm bin/$(NAME)
	rm bin/tests
	rm test/catch.hpp

