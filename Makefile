# Define the lint command for JavaScript using ESLint
LINT_CMD = eslint .

# Define the lint command for Python using pylint
LINT_CMD_PYTHON = pylint my_project/

# Target to lint JavaScript files
lint-js:
	$(LINT_CMD)

# Target to lint Python files
lint-python:
	$(LINT_CMD_PYTHON)

# Target to lint both JavaScript and Python files
lint: lint-js lint-python

.PHONY: lint lint-js lint-python