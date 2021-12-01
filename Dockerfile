FROM python:3.6-slim-stretch

RUN apt-get update -y
RUN apt-get install -y python3 python-pip-whl python3-pip
COPY ./app/requirements.txt /app/
WORKDIR /app
RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD ["gunicorn", "-b", "0.0.0.0:5000", "wsgi:app"]
