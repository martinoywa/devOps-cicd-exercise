install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	autopep8 --in-place --aggressive --aggressive average.py test_average.py

lint:
	pylint --disable=R,C average.py

test:
	python -m pytest -vv --cov=average test_average.py