FROM python:3.8-alpine
WORKDIR /code
ENV FLASK_APP autoapp.py
ENV FLASK_DEBUG=1
ENV FLASK_RUN_HOST 0.0.0.0
COPY requirements requirements
RUN apk add --no-cache gcc musl-dev postgresql-dev libffi-dev sqlite
RUN pip install -r requirements/prod.txt
COPY . .
RUN flask db stamp head
RUN flask db migrate
RUN flask db upgrade
CMD ["flask", "run"]
