PYTHON=python3
VENV_NAME=.venv

.PHONY: build
build:
	jupyter-book build book

.PHONY: open
open:
	open book/_build/html/index.html

.PHONY: setup-venv
setup-venv:
	${PYTHON} -m venv ${VENV_NAME} && \
	. ${VENV_NAME}/bin/activate && \
	pip install --upgrade pip && \
	pip install -r requirements.txt

.PHONY: clean
clean:
	rm -rf book/.ipynb_checkpoints
	rm -rf book/_build
