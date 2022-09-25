setup:
	python3 -m venv ~/.udacity-devops

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python3 -m pytest -vv test_hello.py
	locust -f locustfile.py --headless --host http://localhost:5000 -u 10 -r 1 --run-time 2m


lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfiles
	pylint --disable=R,C,W1203,W0703,W0612 app.py

all: install lint test
