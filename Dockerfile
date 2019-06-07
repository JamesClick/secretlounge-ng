FROM jfloff/alpine-python:3.7

WORKDIR /app

ADD src/ /app/src/
ADD util/ /app/util/

ADD Pipfile Pipfile.lock secretlounge-ng.py /app/

RUN pip install pipenv
RUN pipenv install --deploy --ignore-pipfile

CMD ["pipenv", "run", "python", "secretlounge-ng.py"]