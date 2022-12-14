FROM python:3.9-slim

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./ .
RUN apt-get update
RUN apt-get install python3-dev default-libmysqlclient-dev gcc  -y
RUN pip install mysqlclient
RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "-u", "manage.py", "runserver", "0.0.0.0:8000"]
