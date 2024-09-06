VENV_DIR = venv
PYTHON = $(VENV_DIR)/bin/python
PIP = $(VENV_DIR)/bin/pip
REQUIREMENTS = requirements.txt
MAIN_SCRIPT = main.py

all: run-all

venv:
	@echo "-> Creating Virtual Environment"
	python3 -m venv $(VENV_DIR)

install: venv
	@echo "-> Install Dependencies"
	$(PIP) install -r $(REQUIREMENTS)

run-all: install
	@echo "-> Running Application"
	$(PYTHON) $(MAIN_SCRIPT)

run:
	@echo "-> Running Application"
	$(PYTHON) $(MAIN_SCRIPT)

clean:
	@echo "-> Cleaning Libraries"
	rm -rf $(VENV_DIR)

.PHONY: venv install run clean