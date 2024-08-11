<?php

namespace Database\Seeders;

use App\Models\Posyandu;
use Faker;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PosyandusTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for ($i = 1; $i <= 10; $i++) {
            $faker = Faker\Factory::create('id_ID');

            Posyandu::firstOrCreate(
                [
                    'code' => 'POSYD-' . sprintf('%05d', $i),
                ],
                [
                    'name' => 'Posyandu ' . sprintf('%05d', $i),
                    'address' => $faker->streetAddress(),
                ]
            );
        }
    }
}
