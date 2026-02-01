<?php


namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class HexwoodCloudSeeder extends Seeder
{
    public function run(): void
    {
        // =========================
        // COLOR VARIANTS
        // =========================
        DB::table('color_variants')->insert([
            'id' => 2,
            'name' => 'Furniture clinic',
            'slug' => 'furniture-clinic',
            'description' => 'https://furnitureclinics.bg/darvo/bayts-za-darvo-za-vanshni-usloviya',
            'created_at' => '2026-01-28 19:54:15',
            'updated_at' => '2026-01-28 19:54:15',
        ]);

        // =========================
        // PRODUCTS
        // =========================
        DB::table('products')->insert([
            [
                'id' => 2,
                'title' => 'HIVE 7',
                'sku' => '2',
                'category_key' => 'lamps',
                'color_variant_id' => 2,
                'description' => 'HIVE 7 – дизайнерска лампа',
                'price' => 70.00,
                'is_active' => 1,
                'created_at' => '2026-01-29 18:30:13',
                'updated_at' => '2026-01-29 22:37:43',
            ],
            [
                'id' => 3,
                'title' => 'HIVE 5',
                'sku' => '3',
                'category_key' => 'lamps',
                'color_variant_id' => 2,
                'description' => 'HIVE 5 – дизайнерска лампа',
                'price' => 50.00,
                'is_active' => 1,
                'created_at' => '2026-01-29 22:44:13',
                'updated_at' => '2026-01-29 22:44:13',
            ],
            [
                'id' => 4,
                'title' => 'HIVE 23',
                'sku' => '4',
                'category_key' => 'lamps',
                'color_variant_id' => 2,
                'description' => 'HIVE 23 – дизайнерска лампа',
                'price' => 175.00,
                'is_active' => 1,
                'created_at' => '2026-01-29 22:52:19',
                'updated_at' => '2026-01-30 17:33:24',
            ],
        ]);

        // =========================
        // PRODUCT ADMIN
        // =========================
        DB::table('product_admin')->insert([
            [
                'product_id' => 2,
                'internal_notes' => '42 дъски, 7 шестоъгълника',
                'is_featured' => 1,
                'created_at' => '2026-01-29 18:30:13',
                'updated_at' => '2026-01-30 19:58:29',
            ],
            [
                'product_id' => 3,
                'internal_notes' => null,
                'is_featured' => 1,
                'created_at' => '2026-01-29 22:44:13',
                'updated_at' => '2026-01-30 19:58:39',
            ],
        ]);

        // =========================
        // PRODUCT PRICING
        // =========================
        DB::table('product_pricing')->insert([
            ['product_id' => 2, 'created_at' => now(), 'updated_at' => now()],
            ['product_id' => 3, 'created_at' => now(), 'updated_at' => now()],
            ['product_id' => 4, 'created_at' => now(), 'updated_at' => now()],
        ]);

        // =========================
        // PRODUCT MATERIALS
        // =========================
        DB::table('product_materials')->insert([
            [
                'product_id' => 2,
                'name' => 'LED крушки',
                'unit_price' => 1.17,
                'quantity' => 7,
                'total_price' => 8.19,
                'created_at' => '2026-01-29 21:04:40',
                'updated_at' => '2026-01-29 21:04:40',
            ],
        ]);

        // =========================
        // PRODUCT MEDIA (примерно)
        // =========================
        DB::table('product_media')->insert([
            [
                'product_id' => 2,
                'file' => 'products/sample.webp',
                'type' => 'image',
                'title' => null,
                'is_primary' => 1,
                'sort_order' => 0,
                'created_at' => '2026-01-29 20:22:59',
                'updated_at' => '2026-01-29 20:22:59',
            ],
        ]);
    }
}
