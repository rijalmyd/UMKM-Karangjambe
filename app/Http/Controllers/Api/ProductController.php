<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{

    public function index()
    {
        $products = Product::all();

        return response()->json([
            'success' => true,
            'data' => $products
        ]);
    }

    public function show($id) {
        $product = Product::findOrFail($id);
        
        return response()->json([
            'success' => true,
            'data' => $product
        ]);
    }

    public function search(Request $request)
    {
        $query = $request->input('query');
        $products = DB::table('products')
		->where('name','like',"%".$query."%")
		->get();

        return response()->json([
            'success' => true,
            'data' => $products
        ]);
    }
}
