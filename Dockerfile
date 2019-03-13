FROM alpine:3.1

RUN apk add --update python py-pip

RUN pip install Flask

COPY simpleapp.py /src/simpleapp.py

EXPOSE 8000
CMD["python", "/src/simpleapp.py", "-p 8000"]
