FROM python:stretch

COPY . /app
WORKDIR /app

# RUN pip freeze > requirements.txt
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":80", "main:APP"]