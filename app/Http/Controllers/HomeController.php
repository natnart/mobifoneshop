<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
use App\Slider;
session_start();

class HomeController extends Controller
{
  //trang chu
  public function index(){
	     //slide
	$slider = Slider::orderBy('slider_id','DESC')->where('slider_status','1')->take(3)->get();
	$all_product = DB::table('tbl_product')->orderby('product_id','desc')->limit(4)->get(); 
	$all_sim = DB::table('tbl_sim')->orderby('sim_id','desc')->limit(12)->get(); 
   	$cate_product = DB::table('tbl_category')->orderby('category_id','desc')->limit(4)->get(); 
	$all_service = DB::table('tbl_service')->where('service_status','0')->orderby(DB::raw('RAND()'))->limit(4)->get(); 
	$all_data_service = DB::table('tbl_data_service')->where('data_service_status','0')->orderby(DB::raw('RAND()'))->limit(4)->get(); 
	$all_call_service = DB::table('tbl_call_service')->where('call_service_status','0')->orderby(DB::raw('RAND()'))->limit(4)->get(); 
	return view('pages.home')->with('all_product', $all_product)->with('all_sim', $all_sim)->with('all_service',$all_service)->with('cate_product', $cate_product)->with('all_data_service', $all_data_service)->with('all_call_service',$all_call_service)->with('slider',$slider);
   }
  
}
