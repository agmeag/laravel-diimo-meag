<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.
# ![Laravel Example App](logo.png)

# Getting started

## Installation


Clone the repository

    git clone https://github.com/agmeag/laravel-diimo-meag.git

Switch to the repo folder

    cd laravel-diimo-meag

Install all the dependencies using composer

    composer install

Copy the example env file and make the required configuration changes in the .env file (**App uses email reset password link, do not forget to add**)

    cp .env.example .env
    
Reset config cache, routes list cache and cache

    php artisan cache:clear
    php artisan config:clear
    php artisan route:clear
    
Generate a new application key

    php artisan key:generate

Run the database migrations (**Set the database connection in .env before migrating**)

    php artisan migrate:fresh --seed

Generate Keys for passport (**Needed if repository does not have it**)

    php artisan passport:install
    php artisan passport:keys

Rediscovery of files and changes.

    composer dump-autoload

Start the local development server

    php artisan serve

You can now access the server at http://localhost:8000 or virtual host of choice

## API Specification

> [Full API Spec](https://documenter.getpostman.com/view/19077015/UVXesdWx)

## Test server

> [Project currently functional](https://laravelmeag.herokuapp.com/)

## Environment variables

- `.env` - Environment variables can be set in this file

----------

Request headers

| **Required** 	| **Key**              	| **Value**            	|
|----------	|------------------	|------------------	|
| Yes      	| Content-Type     	| application/json 	|
| Yes      	| X-Requested-With 	| XMLHttpRequest   	|
| Optional 	| Authorization    	| Token {Passport Oauth2}      	|

Refer the [api specification](#api-specification) for more info.

----------
 
# Authentication
 
This applications uses Bearer Token from Passport Oauth2 specified in collection Laravel Meag
 
https://laravel.com/docs/7.x/passport

----------


## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
