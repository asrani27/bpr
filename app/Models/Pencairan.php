<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pencairan extends Model
{
    use HasFactory;
    protected $table = 'pencairan';
    protected $guarded = ['id'];
    public function deposito()
    {
        return $this->belongsTo(Deposito::class, 'deposito_id');
    }
    public function nasabah()
    {
        return $this->belongsTo(Nasabah::class, 'nasabah_id');
    }
}
