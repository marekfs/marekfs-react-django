FROM python:3.7.3-stretch
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt \
    && echo "#!/bin/sh\n\
    python manage.py migrate\n\
    python manage.py runserver 0.0.0.0:8000" > /usr/local/bin/startup.sh \
    && chmod a+x /usr/local/bin/startup.sh