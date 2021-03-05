FROM python:3.7.3-slim
COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt
COPY . /kasyan.me
WORKDIR /app
ENTRYPOINT ["./gunicorn_starter.sh"]
