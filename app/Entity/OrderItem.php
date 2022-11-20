<?php
/**
 * Created by PhpStorm.
 * User: Nam Handsome
 * Date: 11/3/2017
 * Time: 2:50 PM
 */

namespace App\Entity;

use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    protected $table = 'order_items';

    protected $primaryKey = 'item_id';

    protected $fillable = [
        'item_id',
        'product_id',
        'order_id',
        'description',
        'currency',
        'quantity',
        'created_at',
        'updated_at'
    ];

    public function product(){
        return $this->hasOne(OrderItem::class, 'product_id', 'product_id');
    }

    public static function getProduct($id){
         $product = Product::with('post')
             ->where('product_id', $id)
             ->first();

         return $product;

    }
}
