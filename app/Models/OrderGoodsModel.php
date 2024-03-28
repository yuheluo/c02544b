<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderGoodsModel extends Model
{
  use HasFactory;

  protected $table = "order_goods";

  protected $fillable = ["goods_id", "id", "order_id"];

  public function order()
  {
    return $this->hasMany(OrderModel::class, "order_id", "id");
  }

  public function goods()
  {
    return $this->hasOne(GoodsModel::class, "id", "goods_id");

  }
  protected function serializeDate(DateTimeInterface $date)
  {
    return $date->format('Y-m-d H:i:s');
  }
}
