<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CalonSiswa extends Model
{
    use HasFactory;

    protected $table = 'calon_siswa';

    protected $fillable = [
        'nama_lengkap',
        'tanggal_lahir',
        'tempat_lahir',
        'usia',
        'jenis_kelamin',
        'agama',
        'status_keluarga',
        'alamat',
        'riwayat_penyakit',
        'nama_ayah',
        'pekerjaan_ayah',
        'hp_ayah',
        'nama_ibu',
        'pekerjaan_ibu',
        'hp_ibu',
        'status_pendaftaran',
        'status_pembayaran',
    ];

    public function siswa()
    {
        return $this->hasMany(Siswa::class, 'calon_siswa_id');
    }
}
