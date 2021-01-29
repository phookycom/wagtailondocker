#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi


python manage.py makemigrations --settings=app.settings.dev
python manage.py migrate --settings=app.settings.dev
# python manage.py update_index --settings=app.settings.dev

exec "$@"