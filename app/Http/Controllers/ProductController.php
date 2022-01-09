<?php

namespace App\Http\Controllers;

use App\models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function create(Request $request)
    {
        $request->validate([
            'nombre' => 'required|string',
            'cantidad' => 'required|int',
            'precio' => 'required|numeric',
            'descripcion' => 'string',
            'imagen' => 'string'
        ]);
        Product::create($request->only(['SKU', 'nombre', 'cantidad', 'precio', 'descripcion', 'imagen']));
        return response()->json([
            'message' => 'Successfully created product!'
        ], 201);
    }

    public function read(Product $product)
    {
        return response()->json($product);
    }

    public function update(Request $request, Product $product)
    {
        $request->validate([
            'nombre' => 'string',
            'cantidad' => 'int',
            'precio' => 'numeric',
            'descripcion' => 'string',
            'imagen' => 'string',
        ]);
        $product->fill($request->only(['SKU', 'nombre', 'cantidad', 'precio', 'descripcion', 'imagen']))->update();
        return response()->json($product);
    }

    public function delete(Product $product)
    {
        $product->delete();
        return response()->json([
            'message' => 'Successfully deleted'
        ]);
    }

    public function list(Request $request)
    {
        $list = new Product();
        $search = $request->get('search');
        $type = $request->type ?? Product::BY_NAME;
        if ($search) {
            // $search=strtolower($search);
            if ($type == Product::BY_NAME) {
                $list = $list->searchByName($search)->paginate(10);
            } else if ($type == Product::BY_SKU) {
                $list = $list->searchBySKU($search)->paginate(10);
            }
        } else {
            $list = Product::paginate(10);
        }
        return response()->json($list);
    }
}
