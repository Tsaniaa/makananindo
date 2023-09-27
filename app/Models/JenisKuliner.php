<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class JenisKuliner extends Model
{
    use HasFactory;

    protected $table = 'jenis_kuliner';
    protected $primaryKey = 'id_jenis_kuliner';

    public function kuliner()
    {
        return $this->hasMany(Kuliner::class, 'id_jenis_kuliner', 'id_jenis_kuliner');
    }
}
