hello:
	echo "this is my first make command"

lint:
	pylint --disable=R,C hello.py
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
test:
	python -m pytest -vv test_hello.py
