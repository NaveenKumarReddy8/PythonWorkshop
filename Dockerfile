FROM python:3.9

LABEL maintainer="Naveen Kumar Reddy Pemmana <mr.naveen8@gmail.com>"

WORKDIR /pythonworkshop
COPY pyproject.toml poetry.lock /pythonworkshop/

# Poetry setup and config.
RUN python -m pip install poetry
RUN python -m poetry config virtualenvs.create false

# Install packages using poetry.
RUN poetry install

# Port exposing.
EXPOSE 8888

ENTRYPOINT [ "python", "-m", "poetry", "run", "jupyter", "lab", "--port", "8888", "--ip", "0.0.0.0", "--no-browser", "--allow-root" ]