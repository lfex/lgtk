ifeq ($(shell which erl),)
$(error Can't find Erlang executable 'erl')
exit 1
endif

LIB = $(PROJECT)
DEPS = ./deps
BIN_DIR = ./bin
SOURCE_DIR = ./src
OUT_DIR = ./ebin
TEST_DIR = ./test
TEST_OUT_DIR = ./.eunit
LFE_BIN=$(DEPS)/lfe/bin

OS := $(shell uname -s)
ifeq ($(OS),Linux)
        HOST=$(HOSTNAME)
endif
ifeq ($(OS),Darwin)
        HOST = $(shell scutil --get ComputerName)
endif

get-deps:
	rebar get-deps

compile:
	rebar compile

repl: compile
	$(LFE_BIN)/lfe -pa ./ebin
