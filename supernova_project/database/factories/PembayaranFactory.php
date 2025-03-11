<?php

namespace Database\Factories;

use App\Models\Pembayaran;
use App\Models\CalonSiswa;
use Illuminate\Database\Eloquent\Factories\Factory;

class PembayaranFactory extends Factory
{
    protected $model = Pembayaran::class;

    public function definition()
    {
        return [
            'calon_siswa_id' => CalonSiswa::factory(),
            'biaya' => $this->faker->randomFloat(2, 1000000, 5000000),
            'tanggal_pembayaran' => $this->faker->date(),
            'bukti_pembayaran' => $this->faker->imageUrl(),
            'metode' => $this->faker->randomElement(['Transfer', 'Cash']),
            'status' => $this->faker->randomElement(['Lunas', 'Belum Lunas']),
        ];
    }
}
