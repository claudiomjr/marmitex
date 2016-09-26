<?php
/**
 * Created by PhpStorm.
 * User: luis
 * Date: 24/09/16
 * Time: 15:16
 */
use Illuminate\Database\Seeder;

class OrderTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        factory(\CodeDelivery\Entities\Order::class, 5)->create()->each(function ($o){
            for ($i=1; $i<=5; $i++){
                $o->item()->save(factory(\CodeDelivery\Entities\OrderItem::class)->make(
                    [
                        'product_id'=>rand(1,5),
                        'price'=>rand(20,100),
                        'quantity'=>rand(1,3),
                    ]
                ));
            }
        });
    }
}
