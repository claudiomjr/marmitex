<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

$factory->define(CodeDelivery\Entities\User::class, function (Faker\Generator $faker) {
    static $password;

    return [
        'name' => $faker->name,
        'email' => $faker->safeEmail,
        'password' => $password ?: $password = bcrypt('secret'),
        'remember_token' => str_random(10),
    ];
});


$factory->define(CodeDelivery\Entities\Category::class, function (Faker\Generator $faker) {

    return [
        'name' => $faker->word
    ];
});

$factory->define(CodeDelivery\Entities\Product::class, function (Faker\Generator $faker) {

    return [
        'name' => $faker->word,
        'description' => $faker->text,
        'price'=>$faker->numberBetween(0,50),
    ];
});


$factory->define(CodeDelivery\Entities\Client::class, function (Faker\Generator $faker) {

    return [
        'phone'=>$faker->phoneNumber,
        'address'=>$faker->address,
        'city'=>$faker->city,
        'state'=>$faker->streetAddress,
        'zipcode'=>$faker->postcode
    ];
});
/*
$factory->define(CodeDelivery\Entities\Client::class, function (Faker\Generator $faker) {

    return [
        'phone'=>$faker->phoneNumber,
        'address'=>$faker->address,
        'city'=>$faker->city,
        'state'=>$faker->streetAddress,
        'zipcode'=>$faker->postcode
    ];
});

*/
$factory->define(CodeDelivery\Entities\Order::class, function (Faker\Generator $faker) {

    return [
        'client_id'=>random_int(1,5),
        'total'=> random_int(1,100),
        'status'=>random_int(0,1)
    ];
});


$factory->define(CodeDelivery\Entities\OrderItem::class, function (Faker\Generator $faker) {
    return [
        'price'=> random_int(1,100),
        'quantity'=>random_int(1,3)
    ];
});