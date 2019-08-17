
ARG BASE_IMAGE=alpine
FROM python:$BASE_IMAGE

# Set up workspace and install mkdocs and dependencies.
COPY requirements.txt /opt/app/requirements.txt
WORKDIR /opt/app
RUN pip install -r requirements.txt
COPY . /opt/app

# Set mkdocs as the entrypoint for convenience.
ENTRYPOINT ["mkdocs"]

# Expose default port for mkdocs serve.
EXPOSE 8000