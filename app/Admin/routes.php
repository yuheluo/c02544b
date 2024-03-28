<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->match(  ['get','post'],'/reg', 'AuthController@reg')->name('reg')->withoutMiddleware(config('admin.route.middleware'));

  $router->resource('goods-type-models', GoodsTypeController::class);
  $router->resource('goods-models', GoodsController::class);
  $router->resource('order-models', OrderController::class);
  $router->resource('return-models', ReturnController::class);
});
