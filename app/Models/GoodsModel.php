<?php

namespace App\Models;

use Carbon\Carbon;
use DateTimeInterface;
use Encore\Admin\Auth\Database\Administrator;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GoodsModel extends Model
{
  use HasFactory;

  public $table = 'goods';

  protected static function boot()
  {
    parent::boot();

    self::creating(function ($model) {
      $user = auth()->user(); 
      if (!$user) {
        return false;
      }
      $model->created_by = $user->id;
    })
    ;

    
    self::updating(function ($model) {
      $user = auth()->user(); 
      if (!$user) {
        return false; 
      }
      $model->updated_by = $user->id; 
    });
  }

  public function goodsType()
  {
    return $this->hasOne(GoodsTypeModel::class, 'id', 'type_id');
  }

  public function createdUser()
  {
    return $this->hasOne(Administrator::class, 'id', 'created_by');
  }

  public function updatedUser()
  {
    return $this->hasOne(Administrator::class, 'id', 'updated_by');
  }
  /**
   * Prepare a date for array / JSON serialization.
   *
   * @param  \DateTimeInterface  $date
   * @return string
   */
  protected function serializeDate(DateTimeInterface $date)
  {
    return $date->format('Y-m-d H:i:s');
  }

}
