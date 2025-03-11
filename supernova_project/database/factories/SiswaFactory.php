<?php

namespace Database\Factories;

use App\Models\CalonSiswa;
use App\Models\Siswa;
use Illuminate\Database\Eloquent\Factories\Factory;

class SiswaFactory extends Factory
{
    protected $model = Siswa::class;

    public function definition()
    {
        return [
            'kelas_id' => $this->faker->numberBetween(1, 3),
            'calon_siswa_id' => CalonSiswa::factory(),
        ];
    }
}
