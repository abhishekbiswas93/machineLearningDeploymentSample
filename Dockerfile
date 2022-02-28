FROM tensorflow/tensorflow:2.5.1

RUN mkdir /app
ADD . /app

WORKDIR /app

RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["gunicorn","--bind=0.0.0.0:8080","main:app"]
