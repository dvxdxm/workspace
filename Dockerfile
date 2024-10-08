FROM python:3.10-slim-buster

# Install Postgres and configure a username + password
USER root
ENV DB_USERNAME=coworking
ENV DB_PASSWORD=123456

ARG DB_USERNAME=coworking
ARG DB_PASSWORD=123456
ARG DB_HOST=127.0.0.1
ARG DB_PORT=5433
ARG DB_NAME=coworking

RUN apt update -y && apt install postgresql postgresql-contrib -y

USER postgres
WORKDIR /db
COPY ./db .

RUN service postgresql start

USER root

WORKDIR /analytics

COPY ./analytics/requirements.txt requirements.txt

# Dependencies are installed during build time in the container itself so we don't have OS mismatch
RUN pip install -r requirements.txt

COPY ./analytics .

# Start the database and Flask application
CMD service postgresql start && python app.py
