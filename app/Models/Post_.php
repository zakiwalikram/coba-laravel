<?php

namespace App\Models;


class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Posts Pertama",
            "slug" => "judul-posts-pertama",
            "author" => "Zakiwal Ikram",
            "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Necessitatibus recusandae alias magnam quis sequi possimus quos veniam sunt pariatur? Atque, accusantium amet suscipit libero minima id. Impedit, est dolor? Voluptates, culpa aut. Commodi voluptatem veritatis cupiditate corrupti ea quas error fugiat mollitia perspiciatis suscipit consectetur qui, quos animi dolorem est nostrum fuga tempora rerum iure accusantium quod, iusto doloribus corporis! Adipisci voluptas eligendi animi aut voluptates natus minus voluptatibus quibusdam quisquam facilis reprehenderit nemo temporibus deserunt voluptatum sapiente nam, dolores eius quos quasi delectus hic, iste autem? Consequatur temporibus ex reiciendis sint animi! Repudiandae aspernatur, fugiat pariatur quo tempore nihil!"
        ],
        [
            "title" => "Judul Posts Kedua",
            "slug" => "judul-posts-kedua",
            "author" => "Zidan",
            "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Magni fugiat modi, quasi nemo fugit ab dolor earum possimus maiores, sint ducimus dolore officia. Eos debitis cumque deleniti nemo. Sequi quod atque doloribus ad sunt consequuntur dolore aliquam amet corrupti aut, asperiores numquam eos unde, dolor illo odit fuga quidem iusto, quas sit omnis quam facilis rem. At delectus non, mollitia in quia quae quas ducimus vero tenetur quisquam hic minima nulla reprehenderit, itaque ratione quidem ipsam ad sint, facilis voluptas cum. Est itaque perspiciatis quod voluptate ipsam natus ipsum adipisci, nemo sit ut velit modi veritatis perferendis at, aliquam nisi labore sed officiis, fugiat voluptas iusto quo numquam. Tempora, maxime sed. Voluptate est recusandae distinctio, eius perferendis ipsum, vitae eveniet deleniti beatae expedita quisquam suscipit, numquam dolor. Nam iusto architecto dolorum accusantium, officiis cupiditate repellendus quibusdam ipsam sit reiciendis. Quidem sapiente ipsum illo totam vitae eligendi dolor autem? Praesentium, ratione?"
        ],
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
