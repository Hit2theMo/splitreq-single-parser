FROM python:3.8-buster
#RUN apk add antiword musl-dev linux-headers g++ libxslt-dev
#RUN apt-get -y install antiword 
RUN apt-get update && apt-get install -y antiword


ENV API_KEY ab8a7ff7-6659-4a44-b7d9-064612d825fa
ENV SENTRY_DSN https://9e265c960b0a43cb99a455d5802b583f@o611000.ingest.sentry.io/5983701
ENV DEBUG False

# copy source code
COPY . /flask-app
WORKDIR /flask-app

# install requirements
RUN pip install -r requirements.txt
RUN python -m spacy download en_core_web_md

#RUN /usr/local/bin/gunicorn -w 9 -b 0.0.0.0:5000 wsgi:app