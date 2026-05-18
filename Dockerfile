FROM python:3.14-alpine
WORKDIR /files
COPY . .
# Failing the build to test that the build process is working correctly. Remove this line to allow the container to run.
RUN exit 1
ENTRYPOINT [ "python3", "-m", "http.server", "-d", "/files", "8000" ]
