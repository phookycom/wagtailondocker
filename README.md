# Wagtail Docker Development Environment
An empty and up-to-date Wagtail project as a Docker environment with PostgreSQL

### Setup
1. Build and run Docker containers:
    ```sh
    $ docker-compose up -d --build
    ```
1. Set Wagtail administrator account:
    ```sh
    $ docker-compose exec web python manage.py createsuperuser --settings=app.settings.dev
    ```
 1. Show logs:
    ```sh
    $ docker-compose logs -f web
    ```
1. Migrate    
    ```sh
    $ docker-compose exec web python manage.py makemigrations --settings=app.settings.dev
    ```
    ```sh
    $ docker-compose exec web python manage.py migrate --settings=app.settings.dev
     ```   
1. Stop Container:
    ```sh
    $ docker-compose down
    ```