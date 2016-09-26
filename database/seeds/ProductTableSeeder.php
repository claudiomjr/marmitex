<?php

use CodeDelivery\Entities\Product;
use Illuminate\Database\Seeder;

class ProdutctTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        factory(Product::class, 10)->create();
    }
}
