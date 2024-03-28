<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ReturnModel extends Model
{
  use HasFactory;

  public $table = 'return';

  public function returnGoods()
  {
    return $this->hasMany(ReturnGoodsModel::class, 'return_id', 'id');
  }

  protected function serializeDate(DateTimeInterface $date)
  {
    return $date->format('Y-m-d H:i:s');
  }
}
