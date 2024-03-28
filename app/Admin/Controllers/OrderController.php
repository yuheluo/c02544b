<?php

namespace App\Admin\Controllers;

use App\Models\GoodsModel;
use App\Models\OrderModel;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class OrderController extends AdminController
{
  /**
   * Title for current resource.
   *
   * @var string
   */
  protected $title = 'Order Information';

  /**
   * Make a grid builder.
   *
   * @return Grid
   */
  protected function grid()
  {
    $grid = new Grid(new OrderModel());
    $grid->disableExport();
    $grid->disableFilter();
    $grid->column('id', __('Id'));
    $grid->column('username', __('Username'));
    $grid->column('phone', __('Contact'));
    $grid->column('address', __('ContactAddress'));
    $grid->column('total', __('TheTotalAmount'));
    $grid->column('Goods number', __('Goods Number'))->display(function (){
      return $this->orderGoods()->count();
    });
    $grid->column('created_at', __('Creation time'));
    $grid->column('updated_at', __('Updated time'));

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
    $show = new Show(OrderModel::findOrFail($id));

    $show->field('id', __('Id'));
    $show->field('username', __('Username'));
    $show->field('phone', __('Contact'));
    $show->field('address', __('ContactAddress'));
    $show->field('total', __('TheTotalAmount'));
    $show->orderGoods("Goods", function (Grid $grid) {
      $grid->column('goods.id', __('ID'));
      $grid->column('goods.name', __('Goods information'));
      $grid->column('goods.supplier', __('Supplier information'));
      $grid->column('goods.inventory_quantity', __('Inventory quantity'));
      $grid->column('goods.status', __('out of stock status'))->using(['1' => 'Ample', '0' => 'Stock']);;
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
    $form = new Form(new OrderModel());

    $form->text('username', __('Username'));
    $form->mobile('phone', __('Contact'));
    $form->text('address', __('ContactAddress'));
    $form->text('total', __('TheTotalAmount'));
    $form->hasMany("orderGoods", "Goods", function (Form\NestedForm $form) {
      $form->select("goods_id", "Select")->options(GoodsModel::all()->pluck('name', 'id'));
    });

    return $form;
  }
}






