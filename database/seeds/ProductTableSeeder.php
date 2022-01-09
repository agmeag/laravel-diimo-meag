<?php

use Illuminate\Database\Seeder;
use App\models\Product;

class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Product::class)->times(20)->create();
    }
}
