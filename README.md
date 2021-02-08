# Wagtail Docker Development Environment
An empty and up-to-date Wagtail project as a Docker environment with PostgreSQL

### Setup development environment
1. Generate your Django secret key and put it in .env.dev (Generator: https://djecrety.ir)
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
### Setup production environment
1. Rename .env.prod.example and .env.prod.db.example to .env.prod and .env.prod.db
1. Generate your Django secret key and put it in .env.dev.prod (Generator: https://djecrety.ir)
1. Build and run Docker containers:
    ```sh
    $ docker-compose -f docker-compose.prod.yml build
    $ docker-compose -f docker-compose.prod.yml up -d
    ```