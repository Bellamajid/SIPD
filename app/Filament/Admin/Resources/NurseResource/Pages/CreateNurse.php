<?php

namespace App\Filament\Admin\Resources\NurseResource\Pages;

use App\Filament\Admin\Resources\NurseResource;
use App\Models\Nurse;
use App\Models\Posyandu;
use App\Models\User;
use Filament\Actions;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;

class CreateNurse extends CreateRecord
{
    protected static string $resource = NurseResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Informasi Pribadi Bidan')
                    ->schema([
                        TextInput::make('nurse.identity_number')
                            ->label('Nomor Registrasi Bidan')
                            ->placeholder('Masukkan Nomor Registrasi Bidan')
                            ->required()
                            ->columnSpan(2),

                        Grid::make()->columnSpan(2),

                        TextInput::make('user.name')
                            ->label('Nama Bidan')
                            ->placeholder('Masukkan Nama Bidan')
                            ->required()
                            ->columnSpan(2),

                        Grid::make()->columnSpan(2),

                        Textarea::make('nurse.domicile')
                            ->label('Alamat / Domisili')
                            ->placeholder('Masukkan Alamat / Domisili Bidan')
                            ->rows(5)
                            ->required()
                            ->columnSpan(2),

                        Grid::make()->columnSpan(2),

                        Select::make('posyandu_id')
                            ->label('Posyandu Tempat Bertugas')
                            ->options(Posyandu::all()->pluck('name', 'id'))
                            ->native(false)
                            ->searchable()
                            ->required()
                            ->columnSpan(2),
                    ])
                    ->columns(4),

                Section::make('Data Akun SIPD')
                    ->schema([
                        TextInput::make('user.email')
                            ->label('Email')
                            ->email()
                            ->unique(table: 'users', column:'email')
                            ->placeholder('Masukkan Email Akun')
                            ->required()
                            ->columnSpan(2),

                        Grid::make()->columnSpan(2),

                        TextInput::make('user.password')
                            ->label('Kata Sandi')
                            ->placeholder('Masukkan Kata Sandi Akun')
                            ->password()
                            ->revealable()
                            ->confirmed()
                            ->required()
                            ->columnSpan(2),

                        Grid::make()->columnSpan(2),

                        TextInput::make('user.password_confirmation')
                            ->label('Ulangi Kata Sandi')
                            ->placeholder('Ulangi Kata Sandi Akun')
                            ->password()
                            ->revealable()
                            ->required()
                            ->columnSpan(2),

                    ])
                    ->columns(4),
            ]);
    }

    protected function handleRecordCreation(array $data): Model
    {
        $user   = $data['user'];
        $nurse  = $data['nurse'];

        $user = User::create([
            'name'      => $user['name'],
            'email'     => $user['email'],
            'password'  => Hash::make($user['password']),
            'email_verified_at' => now(),
        ]);

        $user->assignRole('officer');

        $officer = Nurse::create([
            'user_id'       => $user->id,
            'name'          => $user->name,
            'identity_number' => $nurse['identity_number'],
            'domicile'      => $nurse['domicile'],
            'posyandu_id'   => $data['posyandu_id'],
        ]);

        return $officer;
    }
}
