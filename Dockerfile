FROM python:3.14-alpine
WORKDIR /files
COPY . .
ENTRYPOINT [ "python3", "-m", "http.server", "-d", "/files", "8000" ]
