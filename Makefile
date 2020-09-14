.PHONY: install
install:
	pip install -r requirements.txt

.PHONY: clean
clean:
	make -C docs clean

.PHONY: build
build: doc

.PHONY: source
source: #source update
	sphinx-apidoc -o docs/source ./

.PHONY: doc
doc: clean
	make -C docs html
	make -C docs markdown
