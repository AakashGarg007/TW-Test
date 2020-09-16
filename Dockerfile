FROM python:alpine3.12

LABEL Maintainer="Aakash Garg"

WORKDIR /usr/src/app

RUN pip install --no-cache-dir Flask

COPY hostName.py .

EXPOSE 5000

CMD [ "python3", "hostName.py" ]
