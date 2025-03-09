<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Jadwal extends Model {
    protected $fillable = [
        'nama',
        'lokasi_aktivitas',
        'tanggal_aktivitas',
        'waktu_mulai',
        'waktu_selesai',
        'image',
        'id_pembuat',
        'pembuat_type',
    ];

    public function pembuat() {
        return $this->morphTo();
    }
}

