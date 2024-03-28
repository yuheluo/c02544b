<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ReturnGoodsModel extends Model
{
  use HasFactory;

  public $table = 'return_goods';
  protected $fillable = ["goods_id","id","return_id"];

  public function goods()
  {
    return $this->hasOne(GoodsModel::class, 'id', 'goods_id');
  }
  protected function serializeDate(DateTimeInterface $date)
  {
    return $date->format('Y-m-d H:i:s');
  }
}
