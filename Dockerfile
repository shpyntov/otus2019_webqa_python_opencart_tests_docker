FROM python:3.7

RUN git clone --single-branch --branch docker-tests https://github.com/shpyntov/otus2019_webqa_python_opencart_tests.git

WORKDIR otus2019_webqa_python_opencart_tests/

RUN pip install -r requirements.txt

CMD pytest
