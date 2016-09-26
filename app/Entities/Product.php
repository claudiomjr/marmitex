<?php

namespace CodeDelivery\Entities;

use Illuminate\Database\Eloquent\Model;
use Prettus\Repository\Contracts\Transformable;
use Prettus\Repository\Traits\TransformableTrait;

class Product extends Model implements Transformable
{
    use TransformableTrait;

    protected $fillable = [
        'name',
        'category_id',
        'price',
        'description',
        'created_at'
    ];

    public function category(){
        return $this->belongsTo(Category::class);
    }

}