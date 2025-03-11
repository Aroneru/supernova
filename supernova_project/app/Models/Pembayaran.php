<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pembayaran extends Model
{
    use HasFactory;

    protected $table = 'pembayaran';

    protected $fillable = [
        'calon_siswa_id',
        'biaya',
        'tanggal_pembayaran',
        'bukti_pembayaran',
        'metode',
        'status',
    ];

    public function calonSiswa()
    {
        return $this->belongsTo(CalonSiswa::class);
    }
}
