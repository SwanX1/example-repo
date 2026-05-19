FROM python:3.14-alpine
WORKDIR /files
COPY . .
RUN exit 1
ENTRYPOINT [ "python3", "-m", "http.server", "-d", "/files", "8000" ]
