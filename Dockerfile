FROM python:3.8

RUN pip install pipenv

COPY Pipfile Pipfile.lock .

RUN pipenv lock -r > requirements.txt
RUN pip install -r requirements.txt

COPY app.py .

CMD 'python' 'app.py'
