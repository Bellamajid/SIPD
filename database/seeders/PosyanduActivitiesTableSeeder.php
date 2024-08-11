<?php

namespace Database\Seeders;

use App\Models\ExpectantMother;
use App\Models\PosyanduActivity;
use App\Models\PosyanduSchedule;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PosyanduActivitiesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $expectantMotherJSON = file_get_contents(storage_path('json/expectant-mothers.json'));

        $jsonData = json_decode(json: $expectantMotherJSON, associative: true);

        $i = 1;
        foreach ($jsonData as $data) {

            $expectantMother = ExpectantMother::where('name', $data['name'])
                ->where('spouse_name', $data['spouse_name'])
                ->first();

            $posyanduSchedule = PosyanduSchedule::where('posyandu_id', $expectantMother->posyandu_id)->inRandomOrder()->first();

            PosyanduActivity::firstOrCreate(
                [
                    'expectant_mother_id'   => $expectantMother->id,
                    'posyandu_id'           => $posyanduSchedule->posyandu->id,
                    'officer_id'            => $posyanduSchedule->officer->id,
                ],
                [
                    'pregnancy_week'        => $data['pregnancy_week'],
                    'blood_pressure_level'  => $data['blood_pressure_level'],
                    'blood_sugar_level'     => $data['blood_sugar_level'],
                    'lila'                  => $data['lila'],
                    'systolic_bp'           => $data['systolic_bp'],
                    'diastolic_bp'          => $data['diastolic_bp'],
                    'body_temperature'      => ((int) $data['body_temperature'] - 32) * 5 / 9,
                    'weight'                => $data['weight'],
                    'height'                => $data['height'],
                    'heart_rate'            => $data['heart_rate'],
                    'risk_level'            => $data['risk_level'],
                    'created_at'            => $posyanduSchedule->date,
                    'updated_at'            => $posyanduSchedule->date,
                ]
            );
        }
    }
}
