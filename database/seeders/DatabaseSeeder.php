<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {


        User::create([
            'name' => 'Zakiwal Ikram',
            'username' => 'zakiwalikram',
            'email' => 'zakiwalikram20@gmail.com',
            'password' => bcrypt('12345678')
        ]);

        // User::create([
        //     'name' => 'Zidan',
        //     'email' => 'zidan@gmail.com',
        //     'password' => bcrypt('123')
        // ]);

        User::factory(3)->create();


        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum sunt magni culpa sint ipsam dicta? A nihil molestias, excepturi reprehenderit quo',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum sunt magni culpa sint ipsam dicta? A nihil molestias, excepturi reprehenderit quo atque quidem voluptatibus quod inventore quis repudiandae ad voluptatum ullam necessitatibus sed minus optio dolorem animi minima repellat ipsam? Consequuntur adipisci temporibus soluta quod perferendis ipsa beatae maxime qui. Tenetur recusandae corrupti aperiam. Natus maxime consequatur aut at in ex voluptates optio cum necessitatibus et consectetur perspiciatis veniam saepe nostrum, ad modi excepturi ea maiores iure tenetur. Atque, ipsa commodi laudantium excepturi obcaecati dolorem quasi! Deleniti, ratione libero laboriosam repudiandae velit iure hic eius minima! Ipsam nisi architecto nemo.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum sunt magni culpa sint ipsam dicta? A nihil molestias, excepturi reprehenderit quo',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum sunt magni culpa sint ipsam dicta? A nihil molestias, excepturi reprehenderit quo atque quidem voluptatibus quod inventore quis repudiandae ad voluptatum ullam necessitatibus sed minus optio dolorem animi minima repellat ipsam? Consequuntur adipisci temporibus soluta quod perferendis ipsa beatae maxime qui. Tenetur recusandae corrupti aperiam. Natus maxime consequatur aut at in ex voluptates optio cum necessitatibus et consectetur perspiciatis veniam saepe nostrum, ad modi excepturi ea maiores iure tenetur. Atque, ipsa commodi laudantium excepturi obcaecati dolorem quasi! Deleniti, ratione libero laboriosam repudiandae velit iure hic eius minima! Ipsam nisi architecto nemo.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum sunt magni culpa sint ipsam dicta? A nihil molestias, excepturi reprehenderit quo',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum sunt magni culpa sint ipsam dicta? A nihil molestias, excepturi reprehenderit quo atque quidem voluptatibus quod inventore quis repudiandae ad voluptatum ullam necessitatibus sed minus optio dolorem animi minima repellat ipsam? Consequuntur adipisci temporibus soluta quod perferendis ipsa beatae maxime qui. Tenetur recusandae corrupti aperiam. Natus maxime consequatur aut at in ex voluptates optio cum necessitatibus et consectetur perspiciatis veniam saepe nostrum, ad modi excepturi ea maiores iure tenetur. Atque, ipsa commodi laudantium excepturi obcaecati dolorem quasi! Deleniti, ratione libero laboriosam repudiandae velit iure hic eius minima! Ipsam nisi architecto nemo.',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
