<?php

use Faker\Generator as Faker;

$factory->define(App\Models\Review::class, function (Faker $faker)
{
    return [
        'review'  => $faker->paragraph,
        'rating'  => rand(0, 5),
        'user_id' => function ()
        {
            return \App\User::all()->random();
        },
        'book_id' => function ()
        {
            return \App\Models\Book::all()->random();
        }
    ];
});
