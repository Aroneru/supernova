<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void {
        Schema::create('nilai', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_siswa')->constrained('siswa')->onDelete('cascade');
            $table->foreignId('id_guru')->constrained('guru')->onDelete('cascade');
            $table->integer('id_kelas');
            $table->integer('id_nilai');
            $table->text('deskripsi');
            $table->timestamps();
        });
    }

    public function down(): void {
        Schema::dropIfExists('nilai');
    }
};

