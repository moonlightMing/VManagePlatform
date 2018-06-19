#!/usr/bin/env bash

python ./manage.py makemigrations

python ./manage.py migrate

/usr/local/bin/supervisord -c /etc/supervisord.conf

python manage.py runserver 0.0.0.0:8000