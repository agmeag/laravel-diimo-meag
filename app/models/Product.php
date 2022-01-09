<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = "product";
    public const BY_SKU = 1;
    public const BY_NAME = 2;
    protected $primaryKey = "id";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'SKU', 'nombre', 'cantidad', 'precio', 'descripcion', 'imagen'
    ];


    public function searchByName($search)
    {
        return Product::where('nombre', 'like', "%$search%");
    }

    public function searchBySKU($search)
    {
        return Product::where('SKU', 'like', "%$search%");
    }


}