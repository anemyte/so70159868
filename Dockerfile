FROM python:3.8.10-buster
COPY requirements.txt .
RUN set -e;\
    pip install --upgrade --no-cache-dir pip setuptools wheel;\
    pip install --no-cache-dir -r requirements.txt;\
    mkdir /app

WORKDIR /app
COPY . .

ENTRYPOINT ["/usr/local/bin/python3", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
