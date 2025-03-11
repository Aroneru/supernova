<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        User::factory()->create([
            'name' => 'Test User',
            'email' => 'test' . time() . '@example.com', // Use a unique email address
        ]);

        $this->call([
            KelasSeeder::class,
            CalonSiswaSeeder::class,
            SiswaSeeder::class,
            GuruSeeder::class,
            AdminSekolahSeeder::class,
            NilaiSeeder::class,
            PembayaranSeeder::class,
        ]);
    }
}
