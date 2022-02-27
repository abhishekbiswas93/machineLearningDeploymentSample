FROM tensorflow/tensorflow:2.5.1

COPY requirements.txt /
RUN python3 -m pip install -r /requirements.txt

COPY . /main
WORKDIR /main

EXPOSE 5000
CMD [ "python" , "main.py"]
