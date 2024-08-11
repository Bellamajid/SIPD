<?php

namespace Database\Seeders;

use App\Models\Nurse;
use App\Models\Officer;
use App\Models\Posyandu;
use App\Models\User;
use Carbon\Carbon;
use Faker\Factory;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call(PosyandusTableSeeder::class);
        $this->call(OfficersTableSeeder::class);
        $this->call(NursesTableSeeder::class);
        $this->call(PosyanduSchedulesTableSeeder::class);
        $this->call(ExpectantMothersTableSeeder::class);
        $this->call(PosyanduActivitiesTableSeeder::class);
    }
}
