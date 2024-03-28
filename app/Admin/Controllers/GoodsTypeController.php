<?php

namespace App\Admin\Controllers;

use App\Models\GoodsTypeModel;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Grid\Displayers\DropdownActions;
use Encore\Admin\Show;

class GoodsTypeController extends AdminController
{
  /**
   * Title for current resource.
   *
   * @var string
   */
  protected $title = 'Goods category';

  /**
   * Make a grid builder.
   *
   * @return Grid
   */
  protected function grid()
  {
    $grid = new Grid(new GoodsTypeModel());
    $grid->disableExport();
    $grid->disableFilter();
    $grid->column('id', __('Id'));
    $grid->column('name', __('Goods category'));

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
    $show = new Show(GoodsTypeModel::findOrFail($id));

    $show->field('id', __('Id'));
    $show->field('name', __('Goods category'));

    return $show;
  }

  /**
   * Make a form builder.
   *
   * @return Form
   */
  protected function form()
  {
    $form = new Form(new GoodsTypeModel());

    $form->text('name', __('Goods category'));

    return $form;
  }
}
