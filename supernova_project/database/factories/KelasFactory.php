<?php

namespace Database\Factories;


use App\Models\Kelas;
use Illuminate\Database\Eloquent\Factories\Factory;

class KelasFactory extends Factory
{
    protected $model = Kelas::class;

    public function definition()
    {
        return [
            'nama' => $this->faker->word,
            'deskripsi' => $this->faker->sentence,
            'tingkat' => $this->faker->numberBetween(1, 4),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
