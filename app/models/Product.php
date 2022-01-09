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
        $search = ' ' . "'%" . $search . "%'";
        return Product::whereRaw('(nombre) LIKE' . $search);
    }

    public function searchBySKU($search)
    {
        $search = ' ' . "'%" . $search . "%'";
        return Product::whereRaw('(SKU) LIKE' . $search);
    }
}
