<?php

namespace Database\Factories;

use App\Models\Guru;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Nilai;
use App\Models\Siswa;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Nilai>
 */
class NilaiFactory extends Factory
{
    protected $model = Nilai::class;

    public function definition(): array
    {
        return [
            'siswa_id' => Siswa::factory(),
            'guru_id' => Guru::factory(),
            'kelas_id' => $this->faker->numberBetween(1, 3),
            'nilai' => $this->faker->numberBetween(0, 100),
            'deskripsi' => $this->faker->text(),
        ];
    }
}
