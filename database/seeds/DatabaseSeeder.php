<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     * @return void
     */
    public function run()
    {
        //Users Seeder factory & Books
        factory(App\User::class, 10)->create()->each(function ($user)
        {
            $user->books()->saveMany(factory(App\Models\Book::class, 2)->make());
        });

        //Reviews
        factory(App\Models\Review::class, 60)->create();
    }
}
