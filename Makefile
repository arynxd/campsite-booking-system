.ONESHELL: # Make should use 1 shell so directories work as intended
.DELETE_ON_ERROR: # Fail fast if a command fails

ROOT_DIR := $(PWD)

all: clean backend frontend after

fmt:
	@echo 'Running a format..'
	cd $(ROOT_DIR)
	npm run fmt

clean:
	@echo 'Cleaning up before building...'
	cd $(ROOT_DIR)
	rm -rf dist/
	mkdir dist/

frontend: clean fmt
	@echo 'Building the frontend'
	cd $(ROOT_DIR)/frontend

	npm run build
	cp -R dist/* ../dist

backend: clean fmt
	@echo 'Building the backend'
	cd $(ROOT_DIR)/backend

	rm -rf build/
	mkdir build/

	@echo 'TODO: implement backend build process'
	exit 1

after:
	@echo 'Site built! Wrote to dist/'

