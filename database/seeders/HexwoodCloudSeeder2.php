<?php


namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class HexwoodCloudSeeder2 extends Seeder
{
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        DB::table('color_variant_items')->truncate();
        DB::table('color_variants')->truncate();
        DB::table('users')->truncate();


        DB::table('product_media')->truncate();
        DB::table('product_materials')->truncate();
        DB::table('product_admin')->truncate();
        DB::table('product_pricing')->truncate();
        DB::table('products')->truncate();

        // ================= COLOR VARIANTS =================
        DB::table('color_variants')->insert([
            'id' => 2,
            'name' => 'Furniture clinic',
            'slug' => 'furniture-clinic',
            'description' => 'https://furnitureclinics.bg/darvo/bayts-za-darvo-za-vanshni-usloviya',
            'created_at' => '2026-01-28 19:54:15',
            'updated_at' => '2026-01-28 19:54:15',
        ]);

        // ================= COLOR VARIANT ITEMS =================
        DB::table('color_variant_items')->insert([
            ['id'=>3,'variant_id'=>2,'name'=>'Atlantic blue','image'=>'color-variants/GhUyghxnrkhT2rAWwKYmkpqZJeCCEgn5dG5pmZ8y.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:55:01','updated_at'=>'2026-01-28 19:55:01'],
            ['id'=>4,'variant_id'=>2,'name'=>'Azure blue','image'=>'color-variants/PkDVB3Q59myKeGbC66EsA5gqSdcG0mAQEX3Y1tJ5.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:55:09','updated_at'=>'2026-01-28 19:55:09'],
            ['id'=>5,'variant_id'=>2,'name'=>'Black','image'=>'color-variants/OLFq1DtYh4WrwRG27kHRvM5XqeiLO78N9zgVy0Rq.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:55:15','updated_at'=>'2026-01-28 19:55:15'],
            ['id'=>6,'variant_id'=>2,'name'=>'Cherry Mahogany','image'=>'color-variants/6BIFgW9F2WIOBC47Sk6gwNYEJgJQcxSNatG243S0.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:55:31','updated_at'=>'2026-01-28 19:55:31'],
            ['id'=>7,'variant_id'=>2,'name'=>'Cream','image'=>'color-variants/7HBwMoFpZRi1cCyvNkGw1b1b2ng1PvrRfJQUH4Ui.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:55:39','updated_at'=>'2026-01-28 19:55:39'],
            ['id'=>8,'variant_id'=>2,'name'=>'Dark blue','image'=>'color-variants/biHEOnZVJHxNyXc434xPGQKHwuAGOSQbggWnLJBg.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:55:50','updated_at'=>'2026-01-28 19:55:50'],
            ['id'=>9,'variant_id'=>2,'name'=>'Dark oak','image'=>'color-variants/WQ6dNwm8zfKD5m5RCWZAjyBO07zcgL2125hCYEo3.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:55:56','updated_at'=>'2026-01-28 19:55:56'],
            ['id'=>10,'variant_id'=>2,'name'=>'Forest green','image'=>'color-variants/GDwSiRDcUbrMxg6MP5kJFCmIRYMCoE5GJxNDGnCO.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:56:06','updated_at'=>'2026-01-28 19:56:06'],
            ['id'=>11,'variant_id'=>2,'name'=>'Gold cedar','image'=>'color-variants/R2t0EF7Dc3XR2gorOU6LSHjwP8U6odGiowimdjm9.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:56:16','updated_at'=>'2026-01-28 19:56:16'],
            ['id'=>12,'variant_id'=>2,'name'=>'Grey','image'=>'color-variants/8UJpObjaNvJIOoOLxRpe2QmPQuHBhUfYTYKGVq0l.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:56:22','updated_at'=>'2026-01-28 19:56:22'],
            ['id'=>13,'variant_id'=>2,'name'=>'Moss green','image'=>'color-variants/WiqKtp8APcfYw4enAZoEhbx5Oog8HDQkD1oOHOpN.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:56:32','updated_at'=>'2026-01-28 19:56:32'],
            ['id'=>14,'variant_id'=>2,'name'=>'Mulberry','image'=>'color-variants/veE1Y9cg2u5l8X33BtrvQl7sJKud8cmFPi8Rec1c.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:56:52','updated_at'=>'2026-01-28 19:56:52'],
            ['id'=>15,'variant_id'=>2,'name'=>'Olive green','image'=>'color-variants/Lda7lbk1dJQYMNRvOQAUu7b09jC8sQBXxJd2MdsQ.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:57:01','updated_at'=>'2026-01-28 19:57:01'],
            ['id'=>16,'variant_id'=>2,'name'=>'pale green','image'=>'color-variants/aDEpK6k8HN3tiOoKzEj69Sba8jE8Ale0c7uZZwhP.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:57:12','updated_at'=>'2026-01-28 19:57:12'],
            ['id'=>17,'variant_id'=>2,'name'=>'pebble','image'=>'color-variants/AOU2AxD2PXwEnD181iJ0OLoRqvo9kA7RLgnqhvQ8.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:57:22','updated_at'=>'2026-01-28 19:57:22'],
            ['id'=>18,'variant_id'=>2,'name'=>'Pink blush','image'=>'color-variants/uoNb4cXFE45f5AxL2MeeinMV7ryfDXfPOuN8X3JD.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:57:33','updated_at'=>'2026-01-28 19:57:33'],
            ['id'=>19,'variant_id'=>2,'name'=>'Red cedar','image'=>'color-variants/1FucBve0c78YyoYzXDx2c5JQcHH9qMW1pWpBH9e0.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:57:50','updated_at'=>'2026-01-28 19:57:50'],
            ['id'=>20,'variant_id'=>2,'name'=>'Sand','image'=>'color-variants/3GdeUBkZix9UdkKsMz4jlMau0EHMyw1XeEblIWzw.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:57:58','updated_at'=>'2026-01-28 19:57:58'],
            ['id'=>21,'variant_id'=>2,'name'=>'Slate','image'=>'color-variants/IzPn3gvG0X1RF3LD6jr6SYr4XvUlbONTQNYga64Y.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:58:09','updated_at'=>'2026-01-28 19:58:09'],
            ['id'=>22,'variant_id'=>2,'name'=>'Sorbet','image'=>'color-variants/BNwhp41lfrExPAg5LEfmVphDaUhcyMlemNqVKOCN.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:58:15','updated_at'=>'2026-01-28 19:58:15'],
            ['id'=>23,'variant_id'=>2,'name'=>'Spring green','image'=>'color-variants/uub9A3sb0pFmeKmHkYcZZvQdVjiW7WNZ7H91oXN8.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:58:25','updated_at'=>'2026-01-28 19:58:25'],
            ['id'=>24,'variant_id'=>2,'name'=>'Sundust','image'=>'color-variants/vFrGofxINYiZ68adkc5qBHH7iZWccHqw32MqFtov.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:58:34','updated_at'=>'2026-01-28 19:58:34'],
            ['id'=>25,'variant_id'=>2,'name'=>'Tardis blue','image'=>'color-variants/33FQjDdYjdEhePYRY4lwGUVJ7lBEbX8rZJRUA2pV.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:58:45','updated_at'=>'2026-01-28 19:58:45'],
            ['id'=>26,'variant_id'=>2,'name'=>'Tardis blue','image'=>'color-variants/qgx3D8OIP2CqLp45y6VddgC6UyGEgyBlG5sGcnaO.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:58:59','updated_at'=>'2026-01-28 19:58:59'],
            ['id'=>27,'variant_id'=>2,'name'=>'Teak','image'=>'color-variants/52xs8ymPHXaWsNkHvrz2rDlIoB2t2X4Mdmj878H9.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:59:05','updated_at'=>'2026-01-28 19:59:05'],
            ['id'=>28,'variant_id'=>2,'name'=>'Teal','image'=>'color-variants/3zKYM4jYM8BTgXpFze7oet8s1Ymg8cPyR1Of7qzD.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:59:14','updated_at'=>'2026-01-28 19:59:14'],
            ['id'=>29,'variant_id'=>2,'name'=>'Vanilla','image'=>'color-variants/YWebNdl1yvKJxJ5SF1yLnAYmbigBUj4cQoRwZyyI.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:59:23','updated_at'=>'2026-01-28 19:59:23'],
            ['id'=>30,'variant_id'=>2,'name'=>'Velvet','image'=>'color-variants/EgLieio9hbfjjhaPwYnx4MFZOC91FTZKvhPT4BYR.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:59:31','updated_at'=>'2026-01-28 19:59:31'],
            ['id'=>31,'variant_id'=>2,'name'=>'Warm graphite','image'=>'color-variants/NZYBj8APDhfo7YctMIVuVboVdZmGrCdBLE4NqJ1n.jpg','sort_order'=>0,'created_at'=>'2026-01-28 19:59:47','updated_at'=>'2026-01-28 19:59:47'],
        ]);

        // USERS
        DB::table('users')->insert([
            'id'=>1,
            'name'=>'Любомир Мариянов Пенчев',
            'email'=>'lmariqnov@gmail.com',
            'phone'=>'0885110977',
            'admin'=>1,
            'password'=>'$2y$12$ofel80rXm.wtNahHng5qZemxnQ8OR1SL6dQGlY/jVUlkHMOgzTjmS',
            'created_at'=>'2026-01-28 19:08:42',
            'updated_at'=>'2026-01-28 19:08:42',
        ]);

        DB::table('products')->insert([
            [
                'id'=>1,'title'=>'test','sku'=>'1','category_key'=>'lamps','color_variant_id'=>2,
                'description'=>'iashdaoidhaodihasdsd','price'=>123.00,'is_active'=>1,
                'created_at'=>'2026-01-29 17:12:49','updated_at'=>'2026-01-29 17:53:12','deleted_at'=>'2026-01-29 17:53:12'
            ],
            [
                'id'=>2,'title'=>'HIVE 7','sku'=>'2','category_key'=>'lamps','color_variant_id'=>2,
                'description'=>"⭐ Отзив за дизайнерската лампа HIVE 7\r\n\r\nHIVE 7 не е просто осветително тяло — това е авторски обект, в който дизайнът, материалът и светлината работят в пълен синхрон.",
                'price'=>70.00,'is_active'=>1,
                'created_at'=>'2026-01-29 18:30:13','updated_at'=>'2026-01-29 22:37:43','deleted_at'=>null
            ],
            [
                'id'=>3,'title'=>'HIVE 5','sku'=>'3','category_key'=>'lamps','color_variant_id'=>2,
                'description'=>"HIVE 5 не е просто осветително тяло — това е авторски обект.",
                'price'=>50.00,'is_active'=>1,
                'created_at'=>'2026-01-29 22:44:13','updated_at'=>'2026-01-29 22:44:13','deleted_at'=>null
            ],
            [
                'id'=>4,'title'=>'HIVE 23','sku'=>'4','category_key'=>'lamps','color_variant_id'=>2,
                'description'=>"HIVE 23 е най-мащабният модел от серията HIVE.",
                'price'=>175.00,'is_active'=>1,
                'created_at'=>'2026-01-29 22:52:19','updated_at'=>'2026-01-30 17:33:24','deleted_at'=>null
            ],
            [
                'id'=>5,'title'=>'ZIGRA Wood Pendant','sku'=>'PRD-000005','category_key'=>'lamps','color_variant_id'=>2,
                'description'=>"ZIGRA е ръчно изработена дървена висяща лампа.",
                'price'=>null,'is_active'=>1,
                'created_at'=>'2026-01-30 18:14:38','updated_at'=>'2026-01-30 18:14:38','deleted_at'=>null
            ],
            [
                'id'=>6,'title'=>'NESTA Wall Shelf','sku'=>'PRD-000006','category_key'=>'lamps','color_variant_id'=>2,
                'description'=>"NESTA е стенна нощна етажерка от масивно дърво.",
                'price'=>null,'is_active'=>1,
                'created_at'=>'2026-01-30 18:40:55','updated_at'=>'2026-01-30 18:40:55','deleted_at'=>null
            ],
            [
                'id'=>7,'title'=>'ARCUS Wall Shelf','sku'=>'PRD-000007','category_key'=>'shelfs','color_variant_id'=>2,
                'description'=>"ARCUS е дизайнерска стенна етажерка.",
                'price'=>null,'is_active'=>1,
                'created_at'=>'2026-01-30 18:46:16','updated_at'=>'2026-01-30 18:46:16','deleted_at'=>null
            ],
            [
                'id'=>8,'title'=>'AXIS Wall Shelf','sku'=>'PRD-000008','category_key'=>'shelfs','color_variant_id'=>2,
                'description'=>"AXIS е стенна етажерка с вертикална композиция.",
                'price'=>null,'is_active'=>1,
                'created_at'=>'2026-01-30 18:51:20','updated_at'=>'2026-01-30 18:51:20','deleted_at'=>null
            ],
            [
                'id'=>9,'title'=>'VERTA Wall Shelf','sku'=>'PRD-000009','category_key'=>'shelfs','color_variant_id'=>2,
                'description'=>"VERTA е стенна етажерка от масивно дърво.",
                'price'=>null,'is_active'=>1,
                'created_at'=>'2026-01-30 18:54:43','updated_at'=>'2026-01-30 18:54:43','deleted_at'=>null
            ],
        ]);

        // ================= PRODUCT ADMIN =================
        DB::table('product_admin')->insert([
            ['product_id'=>2,'internal_notes'=>"42 dyski , 7 shestoygylnika",'is_featured'=>1,'created_at'=>'2026-01-29 18:30:13','updated_at'=>'2026-01-30 19:58:29'],
            ['product_id'=>3,'internal_notes'=>null,'is_featured'=>1,'created_at'=>'2026-01-29 22:44:13','updated_at'=>'2026-01-30 19:58:39'],
            ['product_id'=>4,'internal_notes'=>null,'is_featured'=>1,'created_at'=>'2026-01-29 22:52:19','updated_at'=>'2026-01-30 17:45:29'],
            ['product_id'=>5,'internal_notes'=>null,'is_featured'=>0,'created_at'=>'2026-01-30 18:14:38','updated_at'=>'2026-01-30 18:14:38'],
            ['product_id'=>6,'internal_notes'=>null,'is_featured'=>0,'created_at'=>'2026-01-30 18:40:55','updated_at'=>'2026-01-30 18:40:55'],
            ['product_id'=>7,'internal_notes'=>null,'is_featured'=>0,'created_at'=>'2026-01-30 18:46:16','updated_at'=>'2026-01-30 18:46:16'],
            ['product_id'=>8,'internal_notes'=>null,'is_featured'=>0,'created_at'=>'2026-01-30 18:51:20','updated_at'=>'2026-01-30 18:51:20'],
            ['product_id'=>9,'internal_notes'=>'https://www.amazon.co.uk/SUMGAR-Floating-Shelving-Bathroom-Decoration/dp/B0DSHVRDQ7?th=1','is_featured'=>1,'created_at'=>'2026-01-30 18:54:43','updated_at'=>'2026-01-30 18:55:15'],
        ]);

        // ================= PRODUCT MATERIALS =================
        DB::table('product_materials')->insert([
            ['id'=>1,'product_id'=>1,'name'=>'asdas','unit_price'=>123,'quantity'=>12,'total_price'=>1476,'link'=>null,'created_at'=>'2026-01-29 17:30:03','updated_at'=>'2026-01-29 17:30:03'],
            ['id'=>2,'product_id'=>2,'name'=>'praktiker luna','unit_price'=>1.15,'quantity'=>7,'total_price'=>8.05,'link'=>null,'created_at'=>'2026-01-29 20:29:21','updated_at'=>'2026-01-29 20:29:21'],
            ['id'=>3,'product_id'=>2,'name'=>'osnova plafon','unit_price'=>4.36,'quantity'=>1,'total_price'=>4.36,'link'=>null,'created_at'=>'2026-01-29 20:29:21','updated_at'=>'2026-01-29 20:29:21'],
            ['id'=>4,'product_id'=>2,'name'=>'дървен материал','unit_price'=>6,'quantity'=>1,'total_price'=>6,'link'=>null,'created_at'=>'2026-01-29 21:02:31','updated_at'=>'2026-01-29 21:02:31'],
            ['id'=>5,'product_id'=>2,'name'=>'LED крушка GU10','unit_price'=>1.17,'quantity'=>7,'total_price'=>8.19,'link'=>null,'created_at'=>'2026-01-29 21:04:40','updated_at'=>'2026-01-29 21:04:40'],
        ]);
        DB::table('product_media')->insert([

        ['id'=>1,'product_id'=>1,'file'=>'products/0aDFTbnxTJx38Hts9r5jotTwC8tfwwnT4YDq5lNC.jpg','type'=>'image','title'=>null,'is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 17:20:19','updated_at'=>'2026-01-29 17:20:19'],
            ['id'=>2,'product_id'=>1,'file'=>'products/bxTdNRMyajPrIlk7Mgw86O8tUP4KWI4Z8dQ1tsrS.jpg','type'=>'document','title'=>'dfgsdfg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 17:22:22','updated_at'=>'2026-01-29 17:22:22'],
            ['id'=>3,'product_id'=>1,'file'=>'products/nMkL3sjvSK09yiBg5m04MloEvcdcot3cxPLBbArK.jpg','type'=>'image','title'=>'2bd01a210a8eab1226f5c9cabdf77f2a.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 17:27:18','updated_at'=>'2026-01-29 17:27:18'],
            ['id'=>4,'product_id'=>1,'file'=>'products/I6gCmwNZhNSHaSU4aSIs1XJd0hJNi2Jmn32IVqcc.jpg','type'=>'image','title'=>'3a51c14e-85a1-4fbb-8984-3a06c7d8eb33.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 17:27:18','updated_at'=>'2026-01-29 17:27:18'],
            ['id'=>5,'product_id'=>1,'file'=>'products/N2J42BfvkgCil8yMNhNXx0DoXVvx11klYpW4pp5b.jpg','type'=>'image','title'=>'6d62627c9d9336bdb5fe92e1389889b5.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 17:27:18','updated_at'=>'2026-01-29 17:27:18'],
            ['id'=>6,'product_id'=>1,'file'=>'products/hQlYY51d7syKwCCG6GhVJcHduWraKDfYukEcPBbX.jpg','type'=>'image','title'=>'6eaa39982f997c600e12cb0d44087460.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 17:27:18','updated_at'=>'2026-01-29 17:27:18'],
            ['id'=>7,'product_id'=>1,'file'=>'products/ar0IhDdeGNR5jCnvMBVdwA6ooDQGVEobFzyA7GOz','type'=>'document','title'=>'biuro moe.skp','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 17:27:36','updated_at'=>'2026-01-29 17:27:36'],

            ['id'=>8,'product_id'=>2,'file'=>'products/vKB0YHhWyEPjzOzC1CkvdqKcEZSyr18AyYzSckDT.webp','type'=>'image','title'=>'Wood_honeycomb_chandelier (1).webp','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 20:22:59','updated_at'=>'2026-01-29 20:22:59'],
            ['id'=>9,'product_id'=>2,'file'=>'products/Yua5084v6CdygauwDnrtA4CckehUmiRp9sODv8r7.webp','type'=>'image','title'=>'honeycomb-solid-wood-pendant-lamp.webp','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 20:23:13','updated_at'=>'2026-01-29 20:23:13'],
            ['id'=>10,'product_id'=>2,'file'=>'products/joUkt173hAgLdqGz9k42SQIUIgQ3MQpUERNxO7jZ.webp','type'=>'image','title'=>'wood_honeycomb_light_close.webp','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 20:23:13','updated_at'=>'2026-01-29 20:23:13'],
            ['id'=>11,'product_id'=>2,'file'=>'products/2KnjOWRJkN8DNwKkz5BiJLkN4eEwEg6TOCmBd1YR.webp','type'=>'image','title'=>'honeycomb_light.webp','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 20:23:13','updated_at'=>'2026-01-29 20:23:13'],
            ['id'=>12,'product_id'=>2,'file'=>'products/Bn69nEvFBGUphocNRg9RNuMwErVsM4BPefkEZ6Cy.webp','type'=>'image','title'=>'wooden_honeycomb_chandelier.webp','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 20:23:13','updated_at'=>'2026-01-29 20:23:13'],
            ['id'=>13,'product_id'=>2,'file'=>'products/RUN3ueODbdxial9tpK8PF6V4LSh5RAOncxJVSuLn.webp','type'=>'image','title'=>'Wood_honeycomb_chandelier.webp','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 20:23:13','updated_at'=>'2026-01-29 20:23:13'],
            ['id'=>14,'product_id'=>2,'file'=>'products/IuzGVLPtdOk4P2cdP4fyLyds7nvd6VkFKfJba7md.webp','type'=>'image','title'=>'Wood_honeycomb_chandelier.webp','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 20:23:13','updated_at'=>'2026-01-29 20:23:13'],
            ['id'=>15,'product_id'=>2,'file'=>'products/JQQtg4JOMXCXO47t5NKDXS0TlPOfRdOKqhY2BtL6.png','type'=>'document','title'=>'Screenshot 2026-01-30 004705.png','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 20:49:37','updated_at'=>'2026-01-29 20:49:37'],
            ['id'=>16,'product_id'=>2,'file'=>'products/FHNwrPBAZ3ZPHyZQTaWCOkbRfRFBTND71I6DPXOn.png','type'=>'document','title'=>'Screenshot 2026-01-30 005137.png','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 20:51:53','updated_at'=>'2026-01-29 20:51:53'],

            ['id'=>17,'product_id'=>3,'file'=>'products/IrmPnFoEiSMAw6SOBwJ4rfLPBzahh6i5WandkgO9.png','type'=>'image','title'=>'HTB10jWNRXXXXXcQaXXXq6xXFXXXR.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 22:44:20','updated_at'=>'2026-01-29 22:44:20'],
            ['id'=>18,'product_id'=>3,'file'=>'products/BMJ2nizJLDHfqhs6i83BOrDpGeQ6gKJIvHInV3WD.jpg','type'=>'image','title'=>'rope-chandelier.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 22:44:39','updated_at'=>'2026-01-29 22:44:39'],
            ['id'=>19,'product_id'=>3,'file'=>'products/Ji4qyPRhjYLGdA1dP0UWwMLwzpyxcVni8Ey1Czht.jpg','type'=>'image','title'=>'51xua-SjwDL.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 22:44:39','updated_at'=>'2026-01-29 22:44:39'],
            ['id'=>20,'product_id'=>3,'file'=>'products/qAZz1cNA98ib4e578ulxOiYGBI7wJizc13MRJOmo.webp','type'=>'image','title'=>'HTB10jWNR.webp','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 22:44:39','updated_at'=>'2026-01-29 22:44:39'],
            ['id'=>21,'product_id'=>4,'file'=>'products/MG35VqnXpWoE38EBHTKFxu7jWEjHkSB7jTJ5MwD7.jpg','type'=>'image','title'=>'12-light-wood-dining-room-living-room-bedroom-led-modern-contemporary-pendant-light.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 22:52:28','updated_at'=>'2026-01-29 22:52:28'],
            ['id'=>22,'product_id'=>4,'file'=>'products/CvrvDiIFdQ87HN1GxXI2rymyIHqtNl5OxCdAUCSQ.webp','type'=>'image','title'=>'rBVaVV71usWAYp2bAABnABU-t3M622.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 22:52:41','updated_at'=>'2026-01-29 22:52:41'],
            ['id'=>23,'product_id'=>4,'file'=>'products/LXpzlq19BTlpIeBd3rAMZjkWO5K7r3BX29JhA4Td.webp','type'=>'image','title'=>'rBVaVl71ub6AZGPcAAN_mVgE87k482.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 22:52:41','updated_at'=>'2026-01-29 22:52:41'],
            ['id'=>24,'product_id'=>4,'file'=>'products/JAmYAGPdisz1QiAd0741ggm7BWZtYLi2hfGAHjky.jpg','type'=>'image','title'=>'7ccc694bc9ca76d3323526ab152542d6.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 22:52:41','updated_at'=>'2026-01-29 22:52:41'],
            ['id'=>25,'product_id'=>4,'file'=>'products/eJRYNRMIyN4OeOiDRESAp50sawvIy2knwCASFA2F.jpg','type'=>'image','title'=>'89c55431d5563ef65c23eacd48ecc65b.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-29 22:52:41','updated_at'=>'2026-01-29 22:52:41'],
            ['id'=>26,'product_id'=>4,'file'=>'products/ixIoGVYOgGK4lRPMQpooryyrXoJ1U7tBNvroumLC.webp','type'=>'document','title'=>'rBVaVV71usWAYp2bAABnABU-t3M622.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 17:19:58','updated_at'=>'2026-01-30 17:19:58'],

            ['id'=>28,'product_id'=>5,'file'=>'products/ZiWGjCEUE1ls1lwvltLWtA66INSI28PTJtpP4DcC.jpg','type'=>'image','title'=>'cefee4b4a642ba2c8002850bc2310035.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:15:05','updated_at'=>'2026-01-30 18:15:05'],
            ['id'=>29,'product_id'=>5,'file'=>'products/u7kGfyCR2F2PBpjGNMJHBICqzS5WzPASWMgeYa6t.jpg','type'=>'image','title'=>'22301121285cc7c203af9f8ee10f734f.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:18:07','updated_at'=>'2026-01-30 18:18:07'],
            ['id'=>30,'product_id'=>5,'file'=>'products/KNfStRNKhn3mPri1ijwtC6uWm4koiqguVHyBxozr.webp','type'=>'image','title'=>'z_shaped_wood_light.webp','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:18:07','updated_at'=>'2026-01-30 18:18:07'],
            ['id'=>31,'product_id'=>5,'file'=>'products/7hCI1WRLRBvZTx6i1SZuwP9mEFftJrd22g5UOFIO.jpg','type'=>'image','title'=>'modern-contemporary-wood-pendant-light.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:18:07','updated_at'=>'2026-01-30 18:18:07'],
            ['id'=>32,'product_id'=>5,'file'=>'products/05mCUfW25Dt7lX6bLMGoH0XvtjwxsTXt0veT0Pef.jpg','type'=>'image','title'=>'cefee4b4a642ba2c8002850bc2310035.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:18:07','updated_at'=>'2026-01-30 18:18:07'],
            ['id'=>33,'product_id'=>5,'file'=>'products/ZXzWZL91n7m45GwHdWXWhtb43ZIqVnxpMz1a1DGE.jpg','type'=>'image','title'=>'fb66da85aec669eb63877ff235db6499.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:18:07','updated_at'=>'2026-01-30 18:18:07'],
            ['id'=>34,'product_id'=>5,'file'=>'products/2PBgUtGjBke0mK5N4LCwDMlU7nfsAv5TDj6ZtP4Z.jpg','type'=>'image','title'=>'142fe302a53f108e03b0ccd88c27efd2.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:18:07','updated_at'=>'2026-01-30 18:18:07'],

            ['id'=>35,'product_id'=>6,'file'=>'products/w7KuQGQMnYNkA8UGIKmkLk9F9W8AtfFYfCmmMncg.jpg','type'=>'image','title'=>'138d8e6aba212086b7e18f70a49e0cba.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:41:07','updated_at'=>'2026-01-30 18:41:07'],
            ['id'=>36,'product_id'=>6,'file'=>'products/wctlVB3fl5SYyoWSrNCFAo8lbBdoBFkYDQsehH49.jpg','type'=>'image','title'=>'89a06b766b36a6de9afe2f0f3eec3d1d.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:41:07','updated_at'=>'2026-01-30 18:41:07'],

            ['id'=>37,'product_id'=>7,'file'=>'products/Lfny43b4QcFoEIDrwLWosDv9qIC43luFdAnRC6ct.jpg','type'=>'image','title'=>'5fd065536a92b1c8e54e6172e9f27162.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:46:22','updated_at'=>'2026-01-30 18:46:22'],

            ['id'=>38,'product_id'=>8,'file'=>'products/RiQ8wYB2mO145KggczNfFsBMYrT7Kl260DKuhpfN.jpg','type'=>'image','title'=>'2158db93534f4389aab8aa88e17612a5-image.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:51:27','updated_at'=>'2026-01-30 18:51:27'],
            ['id'=>39,'product_id'=>8,'file'=>'products/F7dREsRHuyq4SkdxEgO8TYmxd8YM5WGM0RyZhqWu.jpg','type'=>'image','title'=>'953aaaea522945ea97fa66c6adb070ac-image.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:51:34','updated_at'=>'2026-01-30 18:51:34'],
            ['id'=>40,'product_id'=>8,'file'=>'products/FRlARaLoMz0z2MnLDcVIIg1zbzSBze3TFQA0HaiC.jpg','type'=>'image','title'=>'43938ce865d42824a4e2ae77864f381a.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:51:34','updated_at'=>'2026-01-30 18:51:34'],

            ['id'=>41,'product_id'=>9,'file'=>'products/lpU9wLFYfzrgi4e2aRflB028H12OjDsolSPFtUbV.jpg','type'=>'image','title'=>'61H0XRQrNpL._AC_SL1000_.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:54:52','updated_at'=>'2026-01-30 18:54:52'],
            ['id'=>42,'product_id'=>9,'file'=>'products/eFaQ6aUezGzo5pwz8yk5bpF48zn2UoUTXrcfzcoO.jpg','type'=>'image','title'=>'81J2nVA1jzL._AC_SL1500_.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:55:04','updated_at'=>'2026-01-30 18:55:04'],
            ['id'=>43,'product_id'=>9,'file'=>'products/7n0StYDsWnEobpHM7N3c8Fq00NNfavaIjEug3iir.jpg','type'=>'image','title'=>'71fd+AF09BL._AC_SL1500_.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:55:04','updated_at'=>'2026-01-30 18:55:04'],
            ['id'=>44,'product_id'=>9,'file'=>'products/s88cKBmANfa0V7gQVBanMsoKBQeqRoMAzU2eJcin.jpg','type'=>'image','title'=>'712rygapU9L._AC_SL1500_.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:55:04','updated_at'=>'2026-01-30 18:55:04'],
            ['id'=>45,'product_id'=>9,'file'=>'products/KFli9D6mTkAzIAkYxmSe9C3FYi93Jk7rLi1AEN79.jpg','type'=>'image','title'=>'71c1W6gRQYL._AC_SL1500_.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:55:04','updated_at'=>'2026-01-30 18:55:04'],
            ['id'=>46,'product_id'=>9,'file'=>'products/SDCLxe7ykQOIHgDg06WwnXKKiovGrPR9AEsbIlS4.jpg','type'=>'image','title'=>'91zPP1rKsPL._AC_SL1500_.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:55:04','updated_at'=>'2026-01-30 18:55:04'],
            ['id'=>47,'product_id'=>9,'file'=>'products/0N7E5AtiuP4fy1VbtXgVovvy6SkIlTfGogovrpGu.jpg','type'=>'image','title'=>'81Z-RYq2xcL._AC_SL1500_.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:55:04','updated_at'=>'2026-01-30 18:55:04'],
            ['id'=>48,'product_id'=>9,'file'=>'products/EMWIEJikgJ88K2ohuP58Eyf1PshItxHvSdvwanfJ.jpg','type'=>'image','title'=>'818fWHslhNL._AC_SL1500_.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:55:04','updated_at'=>'2026-01-30 18:55:04'],
            ['id'=>49,'product_id'=>9,'file'=>'products/bM05CFc3cfRQZujC0maesn7iTBXWGLsr9CziEUeV.jpg','type'=>'image','title'=>'71AQbh-ODHL._AC_SL1500_.jpg','is_primary'=>0,'sort_order'=>0,'created_at'=>'2026-01-30 18:55:04','updated_at'=>'2026-01-30 18:55:04'],

        ]);

        // ================= PRODUCT PRICING =================
        DB::table('product_pricing')->insert([
            ['product_id'=>2,'work_hours'=>null,'hour_price'=>null,'created_at'=>'2026-01-29 18:30:13','updated_at'=>'2026-01-29 18:30:13'],
            ['product_id'=>3,'work_hours'=>null,'hour_price'=>null,'created_at'=>'2026-01-29 22:44:13','updated_at'=>'2026-01-29 22:44:13'],
            ['product_id'=>4,'work_hours'=>null,'hour_price'=>null,'created_at'=>'2026-01-29 22:52:19','updated_at'=>'2026-01-29 22:52:19'],
            ['product_id'=>5,'work_hours'=>null,'hour_price'=>null,'created_at'=>'2026-01-30 18:14:38','updated_at'=>'2026-01-30 18:14:38'],
            ['product_id'=>6,'work_hours'=>null,'hour_price'=>null,'created_at'=>'2026-01-30 18:40:55','updated_at'=>'2026-01-30 18:40:55'],
            ['product_id'=>7,'work_hours'=>null,'hour_price'=>null,'created_at'=>'2026-01-30 18:46:16','updated_at'=>'2026-01-30 18:46:16'],
            ['product_id'=>8,'work_hours'=>null,'hour_price'=>null,'created_at'=>'2026-01-30 18:51:20','updated_at'=>'2026-01-30 18:51:20'],
            ['product_id'=>9,'work_hours'=>null,'hour_price'=>null,'created_at'=>'2026-01-30 18:54:43','updated_at'=>'2026-01-30 18:54:43'],
        ]);

        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

    }
}
