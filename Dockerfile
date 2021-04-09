FROM python:3.4
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*
RUN pip install Flask
WORKDIR /usr/src/app
COPY . .

EXPOSE 5000
CMD ["python", "app.py", "runserver", "0.0.0.0:5000"]
