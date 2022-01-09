<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['prefix' => 'auth'], function () {
    Route::post('login', 'AuthController@login');
    Route::post('signup', 'AuthController@signup');

    Route::group(['middleware' => 'auth:api'], function () {
        Route::get('logout', 'AuthController@logout');
        Route::get('user', 'AuthController@user');
    });
});
//Routes for Password Reset link, reset password form and update password action
Route::group(['prefix' => 'password'], function () {
    Route::post('sendResetLink', 'ResetPasswordController@sendResetPasswordLink');
    Route::post('resetPassword', 'ResetPasswordController@resetPassword');
    Route::get('reset', 'ResetPasswordController@resetForm')->name('password.reset');
});


Route::group(['prefix' => 'user', 'middleware' => 'auth:api'], function () {
    Route::get('/list', 'UserController@list');
    Route::post('/store', 'UserController@create');
    Route::get('/{user}', 'UserController@read');
    Route::post('/{user}', 'UserController@update');
    Route::delete('/{user}', 'UserController@delete');
});

Route::group(['prefix' => 'product', 'middleware' => 'auth:api'], function () {
    Route::get('/list', 'ProductController@list');
    Route::post('/store', 'ProductController@create');
    Route::get('/{product}', 'ProductController@read');
    Route::post('/{product}', 'ProductController@update');
    Route::delete('/{product}', 'ProductController@delete');
});
