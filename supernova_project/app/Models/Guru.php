<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Guru extends Model {
    use HasFactory;

    protected $table = 'guru';

    protected $fillable = [
        'nama',
        'tanggal_lahir',
        'tempat_lahir',
        'usia',
        'kelas_id',
    ];

    public function kelas() {
        return $this->belongsTo(Kelas::class);
    }

    public function jadwal() {
        return $this->morphMany(Jadwal::class, 'pembuat');
    }

    // public function nilais()
    // {
    //     return $this->hasMany(Nilai::class, 'id_siswa');
    // }
}

