<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    protected $fillable = [
        'calon_siswa_id',
        'kelas_id',
    ];

    public function calonSiswa()
    {
        return $this->belongsTo(CalonSiswa::class);
    }

    public function kelas()
    {
        return $this->belongsTo(Kelas::class);
    }
}
