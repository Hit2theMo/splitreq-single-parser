FROM python:3.8-alpine

ENV CELERY_BROKER_URL redis://redis:6379/0
ENV CELERY_RESULT_BACKEND redis://redis:6379/0
ENV API_KEY ab8a7ff7-6659-4a44-b7d9-064612d825fa
ENV SENTRY_DSN https://51db7ee73f9d431dba99fe94a659e5c0@o611000.ingest.sentry.io/5748041
ENV HOST 0.0.0.0
ENV PORT 5000
ENV DEBUG False

# copy source code
COPY . /flask-app
WORKDIR /flask-app

# install requirements
RUN pip install -r requirements.txt

# expose the app port
EXPOSE 5000

# run the app server
# ENTRYPOINT ["python"]
# CMD ["wsgi.py"]

#CMD gunicorn --workers $WORKERS \
#  --threads $THREADS \
#  --bind 0.0.0.0:$PORT_APP \
#  --log-level DEBUG \
#  app:app