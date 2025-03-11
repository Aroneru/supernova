<?php

namespace Database\Seeders;

use App\Models\Nilai;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class NilaiSeeder extends Seeder
{
    public function run(): void
    {
        Nilai::factory()->count(50)->create();
    }
}
