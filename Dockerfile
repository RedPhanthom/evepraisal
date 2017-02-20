FROM alpine:3.5
RUN apk add --no-cache python py-pip build-base git python-dev cyrus-sasl-dev zlib-dev libmemcached-dev
COPY ./ /evepraisal
RUN pip install -r /evepraisal/requirements.txt
WORKDIR /evepraisal
CMD ["python", "./wsgi.py", "-p 8000"]
