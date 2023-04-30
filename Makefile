# Makefile

## Configuration

BUILD_TIME := $(shell date +%FT%T%z)
PROJECT := $(shell basename $(PWD))

## Install dependencies

.PHONY: install
install:
	python3 -m pip install -U -r requirements.txt

## Scripts

### Development

.PHONY: dev
dev:
	python3 -m flask --app app --debug run --host=localhost --port=3000

### Production

.PHONY: prod
start:
	python3 -m flask run
