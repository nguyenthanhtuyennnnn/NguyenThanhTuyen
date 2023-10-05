<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
session_start();

class HomeController extends Controller
{
    public function index(){
        $cate_product = DB::table('tbl_product')->where('category_status','1')->orderby('category_id','desc')->get();
        $brand_product = DB::table('tbl_brand')->where('brand_status','1')->orderby('brand_id','desc')->get();
        $all_product = DB::table('tbl_products')->where('product_status','1')->orderby('product_id','desc')->limit(6)->get();
        // $all_product = DB::table('tbl_products')
        // ->join('tbl_product','tbl_product.category_id','=','tbl_products.category_id')
        // ->join('tbl_brand','tbl_brand.brand_id','=','tbl_products.brand_id')
        // ->orderby('tbl_products.product_id','desc')->get();


        return view ('pages.home')->with('category',$cate_product)->with('brand',$brand_product)->with('all_product',$all_product);
    }
}
