<?php

namespace Database\Factories;

use App\Models\Guru;
use Illuminate\Database\Eloquent\Factories\Factory;

class GuruFactory extends Factory
{
    protected $model = Guru::class;

    public function definition()
    {
        return [
            'nama' => $this->faker->name,
            'tanggal_lahir' => $this->faker->date,
            'tempat_lahir' => $this->faker->city,
            'usia' => $this->faker->numberBetween(20, 60),
            'kelas_id' => $this->faker->numberBetween(1, 3),
        ];
    }
}
