<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;

class HomeController extends Controller
{
    public function index(Content $content)
    {
        return $content
            ->title('Dashboard')
            ->description('Description...')
            ->row('<div class="col-md-12">
<div class="title" style="font-size:50px;color: #636b6f;font-family: "Raleway",sans-serif;font-weight: 100;display: block;text-align:center;margin: 20px 0 10px 0px;">
    Warehouse-Management-System</div>
</div>')

            ->row(function (Row $row) {

                $row->column(6, function (Column $column) {
                    $column->append(Dashboard::environment());
                });



                $row->column(6, function (Column $column) {
                    $column->append(Dashboard::dependencies());
                });
            });
    }
}
