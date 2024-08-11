<?php

namespace Database\Seeders;

use App\Models\Officer;
use App\Models\Posyandu;
use App\Models\PosyanduSchedule;
use Carbon\Carbon;
use Carbon\CarbonPeriod;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PosyanduSchedulesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $posyandus = Posyandu::all();

        foreach ($posyandus as $posyandu) {
            for ($i = 1; $i <= 2; $i++) {
                $periods = CarbonPeriod::between(Carbon::now()->startOfMonth(), Carbon::now()->endOfMonth())
                    ->filter(fn ($date) => $date->dayOfWeekIso === rand(1, 5));

                foreach ($periods as $date) {
                    $officer = Officer::where('posyandu_id', $posyandu->id)->inRandomOrder()->first();

                    PosyanduSchedule::firstOrCreate([
                        'posyandu_id'   => $posyandu->id,
                        'officer_id'    => $officer->id,
                        'date'          => $date->format('Y-m-d 08:i:s'),
                    ]);
                }
            }
        }
    }
}
