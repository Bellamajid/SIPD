<?php

namespace Database\Seeders;

use App\Models\Officer;
use App\Models\Posyandu;
use App\Models\User;
use Faker;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;

class OfficersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker\Factory::create('id_ID');
        $posyandus = Posyandu::all();

        $user = User::firstOrCreate(
            [
                'email' => 'admin@mail.com',
            ],
            [
                'name'              => 'Administrator',
                'password'          => Hash::make('12345678'),
                'email_verified_at' => now(),
            ]
        );

        Role::firstOrCreate(['name' => 'admin']);
        $user->assignRole('admin');

        $i = 1;
        foreach ($posyandus as $posyandu) {
            for ($j = 1; $j <= 5; $j++) {

                $user = User::firstOrCreate(
                    [
                        'email' => 'kader' . (($i - 1) * 5 + $j) . '@mail.com',
                    ],
                    [
                        'name'              => $this->removeTitleOnName($faker->name()),
                        'password'          => Hash::make('12345678'),
                        'email_verified_at' => now(),
                    ]
                );

                Role::firstOrCreate(['name' => 'officer']);
                $user->assignRole('officer');

                Officer::firstOrCreate(
                    [
                        'user_id'       => $user->id,
                        'posyandu_id'   => $posyandu->id,
                    ],
                    [
                        'identity_number'   => 'KADER-' . sprintf('%05d', $i) . '.' . $posyandu->code,
                        'name'              => $user->name,
                        'domicile'          => $faker->streetAddress(),
                        'is_headmaster'     => $j === 1 ? 1 : 0,
                    ]
                );
            }

            $i++;
        }
    }

    protected function removeTitleOnName(string $name)
    {
        return preg_replace("/(?=[^ ]*[^A-Za-z \'-])([^ ]*)(?:\\s+|$)/i", '', $name);
    }
}
