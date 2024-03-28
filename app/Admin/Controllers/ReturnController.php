<?php

namespace App\Admin\Controllers;

use App\Models\GoodsModel;
use App\Models\ReturnModel;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Arr;

class ReturnController extends AdminController
{
  /**
   * Title for current resource.
   *
   * @var string
   */
  protected $title = 'Refund Management';

  /**
   * Make a grid builder.
   *
   * @return Grid
   */
  protected function grid()
  {
    $grid = new Grid(new ReturnModel());
    $grid->disableExport();
    $grid->disableFilter();
    $grid->column('id', __('Id'));
    $grid->column('username', __('username'));
    $grid->column('phone', __('phone'));
    $grid->column('price', __('price'));
    $grid->column('number', __('Tracking Number'));
    $grid->column('Goods number', __('Refund Goods Number'))->display(function (){
      return $this->returnGoods()->count();
    });

    return $grid;
  }

  /**
   * Make a show builder.
   *
   * @param mixed $id
   * @return Show
   */
  protected function detail($id)
  {
    $show = new Show(ReturnModel::findOrFail($id));
    $show->field('id', __('Id'));
    $show->field('username', __('username'));
    $show->field('phone', __('phone'));
    $show->field('price', __('price'));
    $show->field('number', __('Tracking Number'));

    $show->returnGoods("Refund Goods", function (Grid $grid) {
      $grid->column('goods.id', __('ID'));
      $grid->column('goods.name', __('Goods information'));
      $grid->column('goods.supplier', __('Supplier information'));
      $grid->column('goods.inventory_quantity', __('Inventory quantity'));
      $grid->column('goods.status',  __('out of stock status'))->using(['1' => 'Ample', '0' => 'Stock']);
      $grid->column('goods.price', __('Retail price'));
      $grid->disableActions();
      $grid->disableTools();
      $grid->disableExport();
      $grid->disableCreateButton();
      $grid->disableBatchActions();
    });
    return $show;
  }

  /**
   * Make a form builder.
   *
   * @return Form
   */
  protected function form()
  {
    $form = new Form(new ReturnModel());

    $form->text('username', __('username'));
    $form->mobile('phone', __('phone'));
    $form->decimal('price', __('price'));
    $form->text('number', __('Tracking Number'));
    $form->hasMany("returnGoods", "Refund Goods", function (Form\NestedForm $form) {
      $form->select("goods_id", "select")->options(GoodsModel::all()->pluck('name', 'id'));
    });

    return $form;
  }
}
