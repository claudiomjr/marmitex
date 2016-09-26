<?php

use CodeDelivery\Entities\Category;
use Illuminate\Database\Seeder;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       // $this->call(UsersTableSeeder::class);
    	factory(Category::class, 10)->create()->each(function ($c){
            for ($i=1; $i<=5; $i++){
               $c->product()->save(factory(\CodeDelivery\Entities\Product::class)->make());
            }
        });
    }
}
