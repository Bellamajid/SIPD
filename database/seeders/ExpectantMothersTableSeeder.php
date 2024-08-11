<?php

namespace Database\Seeders;

use App\Models\ExpectantMother;
use App\Models\Posyandu;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;

class ExpectantMothersTableSeeder extends Seeder
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
            $posyandu = Posyandu::inRandomOrder()->first();

            $user = User::firstOrCreate(
                [
                    'email'     => 'bumil' . $i . '@mail.com',
                    'name'      => $data['name'],
                ],
                [
                    'password'          => Hash::make('12345678'),
                    'email_verified_at' => now(),
                ]
            );

            Role::firstOrCreate(['name' => 'expectant_mother']);
            $user->assignRole('expectant_mother');

            ExpectantMother::firstOrCreate(
                [
                    'user_id'       => $user->id,
                    'posyandu_id'   => $posyandu->id,
                ],
                [
                    'registration_number'       => 'BUMIL' . sprintf('%05d', $i) . '.' . $posyandu->code,
                    'name'                      => $data['name'],
                    'spouse_name'               => $data['spouse_name'],
                    'age'                       => $data['age'],
                    'spouse_age'                => $data['spouse_age'],
                    'education_level'           => $data['education_level'],
                    'spouse_education_level'    => $data['spouse_education_level'],
                    'occupation'                => $data['occupation'],
                    'spouse_occupation'         => $data['spouse_occupation'],
                    'no_of_pregnancy'           => $data['no_of_pregnancy'],
                    'address'                   => $data['address'],
                    'hpht'                      => Carbon::createFromFormat('d/m/y', $data['hpht'])->format('Y-m-d'),
                    'tp'                        => Carbon::createFromFormat('d/m/y', $data['tp'])->format('Y-m-d'),
                ]
            );

            $i++;
        }
    }
}
