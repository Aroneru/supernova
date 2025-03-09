<?php

namespace Database\Factories;

use App\Models\CalonSiswa;
use Illuminate\Database\Eloquent\Factories\Factory;

class CalonSiswaFactory extends Factory
{
    protected $model = CalonSiswa::class;

    public function definition()
    {
        return [
            'nama_lengkap' => $this->faker->name,
            'tanggal_lahir' => $this->faker->date,
            'tempat_lahir' => $this->faker->city,
            'usia' => $this->faker->numberBetween(4, 7),
            'jenis_kelamin' => $this->faker->randomElement(['Laki-laki', 'Perempuan']),
            'agama' => $this->faker->randomElement(['Islam', 'Kristen', 'Katolik', 'Hindu', 'Buddha', 'Konghucu']),
            'status_keluarga' => $this->faker->randomElement(['Anak Kandung', 'Anak Angkat']),
            'alamat' => $this->faker->address,
            'riwayat_penyakit' => $this->faker->optional()->word,
            'nama_ayah' => $this->faker->name('male'),
            'pekerjaan_ayah' => $this->faker->jobTitle,
            'hp_ayah' => $this->faker->phoneNumber,
            'nama_ibu' => $this->faker->name('female'),
            'pekerjaan_ibu' => $this->faker->jobTitle,
            'hp_ibu' => $this->faker->phoneNumber,
            'status_pendaftaran' => $this->faker->randomElement(['Diterima', 'Ditolak', 'Menunggu']),
            'status_pembayaran' => $this->faker->randomElement(['Lunas', 'Belum Lunas']),
        ];
    }
}
