<?php

namespace CodeDelivery\Entities;

use Illuminate\Database\Eloquent\Model;
use Prettus\Repository\Contracts\Transformable;
use Prettus\Repository\Traits\TransformableTrait;

class Order extends Model implements Transformable
{
    use TransformableTrait;


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'client_id',
        'user_deliveryman_id',
        'total',
        'status'
    ];

    public function item()
    {
        return $this->hasMany(OrderItem::class);
    }
    public function client()
    {
        return $this->belongsTo(Client::class);
    }

    public function user_delivery_man(){
        return $this->belongsTo(User::class);
    }

    public function product(){
        return $this->hasMany(Product::class);
    }


}
