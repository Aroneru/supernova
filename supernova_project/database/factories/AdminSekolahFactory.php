<?php

namespace Database\Factories;

use App\Models\AdminSekolah;
use Illuminate\Database\Eloquent\Factories\Factory;

class AdminSekolahFactory extends Factory
{
    protected $model = AdminSekolah::class;

    public function definition()
    {
        return [
            'nama' => $this->faker->name,
            'email' => $this->faker->unique()->safeEmail,
            'username' => $this->faker->userName,
            'password' => bcrypt('password'), // Default password, ganti aja nanti
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
