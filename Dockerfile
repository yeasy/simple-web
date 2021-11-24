FROM python:2.7-alpine
EXPOSE 8000
WORKDIR /code
ADD . /code
RUN touch index.html
CMD python index.py 0.0.0.0 8000

