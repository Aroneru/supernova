<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Guru;

class GuruSeeder extends Seeder
{
    public function run()
    {
        Guru::factory()->count(10)->create(); // Create 10 Guru records
    }
}
