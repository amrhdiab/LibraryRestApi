<?php

use Faker\Generator as Faker;

$factory->define(App\Models\Book::class, function (Faker $faker)
{
    return [
        'name'        => $faker->words(3,true),
        'description' => $faker->paragraph,
        'price'       => rand(100, 999),
        'author'      => $faker->name,
        'stock'       => rand(3, 90)
    ];
});
