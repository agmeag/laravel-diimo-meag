<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\models\User;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/
// $faker->addProvider(new Faker\Provider\en_HK\Phone($faker));

$factory->define(User::class, function (Faker $faker) {
    static $password;
    return [
        'username' => $faker->userName,
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'email_verified_at' => now(),
        'password' => $password ?: $password = bcrypt('secret'),
        'remember_token' => Str::random(10),
        'phone' => '77889910',
        'birthday' => $faker->date('Y-m-d'),
    ];
});
