<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\models\Product;
use Faker\Generator as Faker;

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

$factory->define(Product::class, function (Faker $faker) {
    static $password;
    return [
        "SKU" => $faker->swiftBicNumber,
        "nombre" => $faker->sentence,
        "cantidad" => $faker->numberBetween($min = 1, $max = 20),
        "precio" => $faker->randomFloat($nbMaxDecimals = 2, $min = 0, $max = 100),
        "descripcion" => $faker->sentence($nbWords = 6, $variableNbWords = true),
        "imagen" => $faker->imageUrl($width = 640, $height = 480)
    ];
});
