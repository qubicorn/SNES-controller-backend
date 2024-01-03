#FROM python:3.12.1-alpine
FROM python:3.12.1-slim-bookworm
WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/. .

EXPOSE 8000
CMD [ "./manage.py", "runserver", "0.0.0.0:8000"]
