FROM bitnami/python:3.13.3

COPY . /app

WORKDIR /app

RUN pip install streamlit poetry==1.7.1
RUN poetry config virtualenvs.create false

RUN poetry install --no-interaction --no-ansi

ENTRYPOINT [ "./run_app.sh" ]
