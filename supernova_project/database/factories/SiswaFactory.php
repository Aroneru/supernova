<?php

namespace Database\Factories;


use App\Models\Siswa;
use Illuminate\Database\Eloquent\Factories\Factory;

class SiswaFactory extends Factory
{
    protected $model = Siswa::class;

    public function definition()
    {
        return [
            'kelas_id' => $this->faker->numberBetween(1, 3),
            'calon_siswa_id' => \App\Models\CalonSiswa::where('status_pendaftaran', 'lulus')->inRandomOrder()->first()->id,
        ];
    }
}
