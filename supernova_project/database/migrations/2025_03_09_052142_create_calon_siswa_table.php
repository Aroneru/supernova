<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void {
        Schema::create('calon_siswa', function (Blueprint $table) {
            $table->id();
            $table->string('nama_lengkap');
            $table->date('tanggal_lahir');
            $table->string('tempat_lahir');
            $table->integer('usia');
            $table->string('jenis_kelamin');
            $table->string('agama');
            $table->string('status_keluarga');
            $table->text('alamat');
            $table->text('riwayat_penyakit')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void {
        Schema::dropIfExists('calon_siswa');
    }
};



