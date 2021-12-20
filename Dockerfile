FROM python:2.7-alpine
EXPOSE 8080
WORKDIR /code
ADD . /code
RUN touch index.html
CMD python index.py 0.0.0.0 8080

