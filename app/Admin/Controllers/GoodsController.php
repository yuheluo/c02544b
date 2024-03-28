<?php

namespace App\Admin\Controllers;

use App\Models\GoodsModel;
use App\Models\GoodsTypeModel;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Arr;

class GoodsController extends AdminController
{
  /**
   * Title for current resource.
   *
   * @var string
   */
  protected $title = 'Goods information';

  /**
   * Make a grid builder.
   *
   * @return Grid
   */
  protected function grid()
  {
    $grid = new Grid(new GoodsModel());
    $grid->disableExport();
    $grid->filter(function (Grid\Filter $filter) {
      $filter->in('type_id', 'Goods category')->multipleSelect(GoodsTypeModel::all()->pluck('name', 'id'));
    });
    $grid->column('id', __('Id'));
    $grid->column('name', __('Goods information'));
    $grid->column('supplier', __('Supplier information'));
    $grid->column('inventory_quantity', __('Inventory quantity'));
    $grid->column('type_id', "Goods category")->display(function ($model) {
      return Arr::get($this, "goodsType.name");
    });
    $grid->column('status', __('out of stock status'))->using(['1' => 'Ample', '0' => 'Stock']);
    $grid->column('price', __('Retail price'));
    $grid->column('created_at', __('Creation time'));
    $grid->column('updated_at', __('Updated time'));
    $grid->column('created_by', __('createdBy'))->display(function ($model) {
      return Arr::get($this, "createdUser.username");
    });
    $grid->column('updated_by', __('updatedBy'))->display(function ($model) {
      return Arr::get($this, "updatedUser.username");
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
    $show = new Show(GoodsModel::findOrFail($id));

    $show->field('id', __('Id'));
    $show->field('name', __('Goods information'));
    $show->field('supplier', __('Supplier information'));
    $show->field('inventory_quantity', __('Inventory quantity'));
    $show->field('type_id', __('Goods category'));
    $show->field('status', __('out of stock status'))->using(['1' => 'Ample', '0' => 'Stock']);;
    $show->field('price', __('Retail price'));
    $show->field('created_at', __('Creation time'));
    $show->field('updated_at', __('Updated time'));
    $show->field('createdUser.username', __('createdBy'));
    $show->field('updatedUser.username', __('updatedBy'));

    return $show;
  }

  /**
   * Make a form builder.
   *
   * @return Form
   */
  protected function form()
  {
    $form = new Form(new GoodsModel());

    $form->text('name', __('Goods information'));
    $form->text('supplier', __('Supplier information'));
    $form->text('inventory_quantity', __('Inventory quantity'));
    $form->select('type_id', __('Goods category'))->options(GoodsTypeModel::all()->pluck('name', 'id'));
    $form->switch('status', __('out of stock status'))->states(
      ['on' => ['value' => 1, 'text' => 'Ample', 'color' => 'success'],
        'off' => ['value' => 0, 'text' => 'Stock', 'color' => 'danger']]
    );
    $form->decimal('price', __('Retail price'));

    return $form;
  }
}
