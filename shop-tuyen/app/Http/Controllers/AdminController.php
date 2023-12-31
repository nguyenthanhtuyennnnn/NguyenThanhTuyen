<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
session_start();
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
class AdminController extends Controller
{
    public function index(){
        return view('admin_login');
    }
    public function show_dashboard(){
        return view('admin.dashboard');
    }
    public function dashboard(Request $request){
        $admin_email = $request->admin_email;
        $admin_password = $request->admin_password;

        $result = DB::table('tbl_admin')->where('admin_email', $admin_email)->where('admin_password', $admin_password)->first();
        if($result){
            Session::put('admin_name', $result->admin_name);
            Session::put('id', $result->id);
            return Redirect::to ('/dashboard');
        }else{
            Session::put('message', 'Tài khoản hoặc mật khẩu không chính xác!');
            return Redirect::to ('/admin');

        }

    }
    public function logout(){
        Session::put('admin_name', null);
        Session::put('id', null);
        return Redirect::to ('/admin');

    }


}
