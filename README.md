# recipe-app-api
Tutorial recipe app


# Run in development

::

    docker-compose up

It should now be visible here: http://localhost:8000/


# Running management commands via Docker

::

    docker-compose run app sh -c "python manage.py migrate"
