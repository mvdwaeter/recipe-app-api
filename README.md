# recipe-app-api
Tutorial recipe app


# Initialize development environment in Docker, or re-install pip requirements:

    docker-compose build

# Run the Django app via Docker

    docker-compose up


It should now be visible here: http://localhost:8000/


# Running management commands via Docker

    docker-compose run app sh -c "python manage.py migrate"
