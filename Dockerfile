FROM python:3.7.3-stretch
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt \
    && echo "#!/bin/sh\n\
python /usr/local/bin/wait.py\n\
python manage.py migrate\n\
python manage.py runserver 0.0.0.0:8000" > /usr/local/bin/startup.sh \
    && echo "import psycopg2\n\
import time\n\
while True:\n\
    try:\n\
        conn = psycopg2.connect('host=db dbname=postgres user=postgres')\n\
        conn.close();\n\
    except:\n\
        print('Waiting 3 seconds...')\n\
        time.sleep(3)\n\
    else:\n\
        break" > /usr/local/bin/wait.py \
    && chmod a+x /usr/local/bin/wait.py && chmod a+x /usr/local/bin/startup.sh