FROM python:3.7-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

RUN pip install pipenv
COPY ./Pipfile /code/Pipfile
RUN pipenv install --system --skip-lock

COPY . /code/