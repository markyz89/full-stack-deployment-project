FROM python:3.7

COPY . /app
WORKDIR /app

# RUN pip freeze > requirements.txt
RUN pip3 install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]