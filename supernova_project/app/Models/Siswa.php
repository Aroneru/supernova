<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    use HasFactory;

    protected $table = 'siswa';

    protected $fillable = [
        'calon_siswa_id',
        'kelas_id',
    ];

    public function calonSiswa()
    {
        return $this->belongsTo(CalonSiswa::class);
    }
    public function nilais()
    {
        return $this->hasMany(Nilai::class, 'siswa_id');
    }
}
