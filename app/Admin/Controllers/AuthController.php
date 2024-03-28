<?php

namespace App\Admin\Controllers;

use Encore\Admin\Auth\Database\Administrator;
use Encore\Admin\Auth\Database\Role;
use Encore\Admin\Controllers\AuthController as BaseAuthController;
use Encore\Admin\Controllers\RoleController;
use Encore\Admin\Controllers\UserController;
use Encore\Admin\Grid;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Redirect;

class AuthController extends BaseAuthController
{
  /**
   * @var string
   */
  protected $loginView = 'admin::login';

  /**
   * Show the login page.
   *
   * @return \Illuminate\Contracts\View\Factory|Redirect|\Illuminate\View\View
   */
  public function getLogin()
  {
    if ($this->guard()->check()) {
      return redirect($this->redirectPath());
    }
    return view("admin/login");
  }

  public function reg(Request $request)
  {
    if ($request->method() == 'POST') {
      $admin = Administrator::query()->create([
        'username' => $request->get('username'),
        'password' => Hash::make($request->get('password')),
        'name' => $request->get('username')
      ]);
      DB::table(config('admin.database.role_users_table'))->insert(['role_id'=>2,'user_id'=>$admin->id]);
      return  \redirect(route("admin.login"));
    }
    return view("admin/reg");
  }
}
