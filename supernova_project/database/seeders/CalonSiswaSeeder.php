<?php

namespace Database\Seeders;

use App\Models\CalonSiswa;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CalonSiswaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        CalonSiswa::factory(15)->create();
    }
}
