<?php

namespace App\Models;

// use Illuminate\Database\Eloquent\Factories\HasFactory;
// use Illuminate\Database\Eloquent\Model;

class Post 
{
    private static $blog_posts =[
    [
        "title" => "Hari Pertama Oke ss",
        "slug" => "hari-pertama",
        "author" => "Seriusman Waruwu",
        "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt ipsam assumenda culpa repellat laudantium saepe odit, doloremque minus, enim earum rerum, incidunt ea eius at expedita voluptas vero natus! Fugit, eaque nesciunt. Quasi quo modi consequuntur error ut, voluptatum facilis repellendus, dignissimos ab vel aliquam ipsam veniam unde beatae quam rem ducimus explicabo corrupti tempore? Voluptates explicabo dolor itaque animi. Sapiente mollitia, sint possimus dolore deleniti, maxime eaque quae cupiditate beatae repudiandae harum molestias expedita. Voluptatibus accusantium ea placeat sit? Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam, iusto, sequi, cumque ducimus repellendus voluptate saepe magnam illo tenetur optio voluptas ipsa fuga quos nostrum mollitia ratione vero ex consequatur."
    ],
    [
        "title" => "Hari Kedua",
        "slug" => "hari-kedua",
        "author" => "Nomas Samaa",
        "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem ad deserunt voluptate necessitatibus deleniti earum delectus quam, praesentium magnam, doloremque debitis error, assumenda dicta accusamus. Amet debitis, architecto quidem nam recusandae natus excepturi numquam atque in ut, ipsa id maxime corrupti iure dolores blanditiis? Tenetur sapiente laboriosam quod. Doloremque recusandae laboriosam aut dolores, beatae fugiat, quia, veniam qui quisquam accusantium amet? Ducimus, maiores dolore fugiat vero accusantium voluptatum. Veritatis reprehenderit velit consectetur numquam? Fugiat quaerat repellendus perferendis distinctio ipsum architecto perspiciatis beatae. Dolor dolores eum itaque deleniti temporibus. Eum, magni. Impedit, sequi. Nesciunt adipisci commodi possimus labore beatae sit nam."
    ]
    ];

    public static function all() 
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();

        return $posts->firstWhere('slug', $slug);
    }
}

 