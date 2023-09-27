<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kuliner extends Model
{
    use HasFactory;

    protected $table = 'kuliner';
    protected $primaryKey = 'id_kuliner';

    public function jeniskuliner()
    {
        return $this->belongsTo(JenisKuliner::class, 'id_jenis_kuliner', 'id_jenis_kuliner');
    }
}
