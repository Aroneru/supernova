<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AdminSekolah extends Model {

    use HasFactory;

    protected $table = 'admin_sekolah';

    protected $fillable = [
        'nama',
        'email',
        'username',
        'password',
    ];

    public function jadwal() {
        return $this->morphMany(Jadwal::class, 'pembuat');
    }
}

