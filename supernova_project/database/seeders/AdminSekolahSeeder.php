<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\AdminSekolah;

class AdminSekolahSeeder extends Seeder
{
    public function run()
    {
        AdminSekolah::factory()->count(3)->create();
    }
}
