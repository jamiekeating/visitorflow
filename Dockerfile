FROM python:2.7

RUN mkdir /visitorflow/

COPY . /visitorflow/

WORKDIR /visitorflow/

RUN apt-get install libmysqlclient-dev 

RUN pip install -r requirements.txt

CMD ["bash", "-c", "./visitorflow.sh"] 