# LibraryRestApi
A simple REST Api project for library books and reviews.

## About
REST Api application where user gets to register/login, add new books and give reviews for other books.

## Laravel Version
Built on laravel 5.8

## Technologies Used
- PHP.
- Laravel API Resources.

## Packages Used
- laravel/passport
- Nexmo Api (Phone Verification)

## Features
- Used laravel API resources to build a simple REST API.
- Library books and reviews api.
- Users able to perform full BREAD on Books.
- Users can make a review and rate a book.
- Tokens based Authentication using laravel passport.
- Phone verification using Nexmo.
- Modified the Exception handler to respond based on the type of the request JSON,Web.

## Notes
- Created factories and seeders to provide dummy data, you can use the artisan seed command if you need a fresh database setup.
- The website local url used is libraryapi.build (defined within Apatche vhosts & machine hosts) files.
- Postman testing collection of the APIs is included (find it under extra/Postman test collection/Library Api.postman_collection.json).
- If you are going to do a migrate you gonna need to install Passport in order to get new keys
```php
php artisan passport:install
```

## About me
Junior PHP/Laravel web developer with unique vision and exceptional dedication.
Amr H. Diab

