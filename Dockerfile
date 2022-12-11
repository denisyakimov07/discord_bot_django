FROM python:3.9-slim

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY ./ .

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]