setup:
	python3 -m venv ~/.docker-locust

install:
	pip3 install --upgrade pip &&\
        pip3 install -r requirements.txt

test:
    #python -m pytest -vv --cov=myrepolib tests/*.py
    #python -m pytest --nbval notebook.ipynb

lint:
	pylint --disable=R,C app.py

all: install lint test