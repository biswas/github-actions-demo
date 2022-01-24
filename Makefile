# skip azure requirements while working in aws
#install:
#	pip install --upgrade pip &&\
#		pip install -r requirements.txt

# skip gcp requirements while working in aws
#install-gcp:
#	pip install --upgrade pip &&\
#		pip install -r requirements-gcp.txt

install-aws:
	pip3 install --upgrade pip &&\
		pip3 install -r requirements-aws.txt

# skip amazon-linux requirements
#install-amazon-linux:
#	pip install --upgrade pip &&\
#		pip install -r amazon-linux.txt

lint:
	pylint --disable=R,C hello.py

format:
	black *.py

test:
	python3 -m pytest -vv --cov=hello test_hello.py

install-env := install-aws

all: $(install-env) lint format test