FROM tensorflow/tensorflow:2.5.1

# Base image of python 3.8
FROM python:3.8

COPY requirements.txt /
RUN python3 -m pip install -r /requirements.txt

COPY . /main
WORKDIR /main

EXPOSE 8080
CMD [ "python" , "main.py"]
