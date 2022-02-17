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
        \App\Models\User::factory(10)->create();

        // User::create([
        //    'name' => 'Seriusman Waruwu',
        //    'email' => 'seriusman0@gmail.com',
        //    'password' => bcrypt('12345')
        // ]);

        // User::create([
        //    'name' => 'Nomar Samaa',
        //    'email' => 'nomar@gmail.com',
        //    'password' => bcrypt('12345')
        // ]);


        User::factory(3)->create();

        Category::create([
           'name' => 'Web Programming',
           'slug' => 'web-programming',
        ]);

        Category::create([
           'name' => 'Web Design',
           'slug' => 'web-design',
        ]);

        Category::create([
           'name' => 'Personal',
           'slug' => 'personal',
        ]);

        // Post::create([
        //     'title' => 'Hari Pertama',
        //     'slug' => 'hari-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus quas ipsam illum ipsum, enim q',
        //     'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus quas ipsam illum ipsum, enim quae nulla expedita doloremque praesentium facere! Doloribus, obcaecati. Excepturi fugiat nam laborum nisi assumenda deserunt rerum, ipsum minima quae nemo libero velit molestias consectetur sint, nobis quas earum d</p><p>olores consequatur debitis sed iure! Magnam error enim cumque repellendus fugiat expedita necessitatibus unde, aperiam facere quos odit optio mollitia illo quod ex non sint iusto cupiditate nemo modi. Mollitia odit laboriosam corrupti officia quia, numquam esse modi qui ad a reiciendis placeat culpa doloremque facere id quis fugit impedit aut maiores, magnam quo deleniti, aperiam voluptas error',
        //     'category_id' => 1,
        //     'user_id' =>1
        // ]);
        
        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Hari Kedua',
        //     'slug' => 'hari-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus quas ipsam illum ipsum, enim q',
        //     'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus quas ipsam illum ipsum, enim quae nulla expedita doloremque praesentium facere! Doloribus, obcaecati. Excepturi fugiat nam laborum nisi assumenda deserunt rerum, ipsum minima quae nemo libero velit molestias consectetur sint, nobis quas earum d</p><p>olores consequatur debitis sed iure! Magnam error enim cumque repellendus fugiat expedita necessitatibus unde, aperiam facere quos odit optio mollitia illo quod ex non sint iusto cupiditate nemo modi. Mollitia odit laboriosam corrupti officia quia, numquam esse modi qui ad a reiciendis placeat culpa doloremque facere id quis fugit impedit aut maiores, magnam quo deleniti, aperiam voluptas error',
        //     'category_id' => 1,
        //     'user_id' =>1
        // ]);

        // Post::create([
        //     'title' => 'Hari Ketiga',
        //     'slug' => 'hari-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus quas ipsam illum ipsum, enim q',
        //     'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus quas ipsam illum ipsum, enim quae nulla expedita doloremque praesentium facere! Doloribus, obcaecati. Excepturi fugiat nam laborum nisi assumenda deserunt rerum, ipsum minima quae nemo libero velit molestias consectetur sint, nobis quas earum d</p><p>olores consequatur debitis sed iure! Magnam error enim cumque repellendus fugiat expedita necessitatibus unde, aperiam facere quos odit optio mollitia illo quod ex non sint iusto cupiditate nemo modi. Mollitia odit laboriosam corrupti officia quia, numquam esse modi qui ad a reiciendis placeat culpa doloremque facere id quis fugit impedit aut maiores, magnam quo deleniti, aperiam voluptas error',
        //     'category_id' => 2,
        //     'user_id' =>1
        // ]);
       
        // Post::create([
        //     'title' => 'Hari Keempat',
        //     'slug' => 'hari-keempat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus quas ipsam illum ipsum, enim q',
        //     'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus quas ipsam illum ipsum, enim quae nulla expedita doloremque praesentium facere! Doloribus, obcaecati. Excepturi fugiat nam laborum nisi assumenda deserunt rerum, ipsum minima quae nemo libero velit molestias consectetur sint, nobis quas earum d</p><p>olores consequatur debitis sed iure! Magnam error enim cumque repellendus fugiat expedita necessitatibus unde, aperiam facere quos odit optio mollitia illo quod ex non sint iusto cupiditate nemo modi. Mollitia odit laboriosam corrupti officia quia, numquam esse modi qui ad a reiciendis placeat culpa doloremque facere id quis fugit impedit aut maiores, magnam quo deleniti, aperiam voluptas error',
        //     'category_id' => 2,
        //     'user_id' =>2
        // ]);
    }
}
