<?php

namespace App\Filament\Admin\Resources\OfficerResource\Pages;

use App\Filament\Admin\Resources\OfficerResource;
use App\Models\Posyandu;
use App\Models\User;
use Filament\Actions;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Pages\EditRecord;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;

class EditOfficer extends EditRecord
{
    protected static string $resource = OfficerResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make()
                ->button()
                ->icon('tabler-trash')
                ->before(fn ($record) => $record->user->delete()),
        ];
    }

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Informasi Pribadi Kader')
                    ->schema([
                        TextInput::make('officer.identity_number')
                            ->label('Nomor Registrasi Kader')
                            ->placeholder('Masukkan Nomor Registrasi Kader')
                            ->required()
                            ->columnSpan(2),

                        Grid::make()->columnSpan(2),

                        TextInput::make('user.name')
                            ->label('Nama Kader')
                            ->placeholder('Masukkan Nama Kader')
                            ->required()
                            ->columnSpan(2),

                        Grid::make()->columnSpan(2),

                        Textarea::make('officer.domicile')
                            ->label('Alamat / Domisili')
                            ->placeholder('Masukkan Alamat / Domisili Kader')
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
                            ->placeholder('Masukkan Email Akun')
                            ->email()
                            ->unique(table: 'users', column: 'email', ignorable: fn ($record) => $record->user)
                            ->required()
                            ->columnSpan(2),

                        Grid::make()->columnSpan(2),

                        TextInput::make('user.password')
                            ->label('Kata Sandi')
                            ->placeholder('Masukkan Kata Sandi Akun')
                            ->password()
                            ->revealable()
                            ->confirmed()
                            ->helperText('Abaikan jika tidak ingin mengubah kata sandi')
                            ->columnSpan(2),

                        Grid::make()->columnSpan(2),

                        TextInput::make('user.password_confirmation')
                            ->label('Ulangi Kata Sandi')
                            ->placeholder('Ulangi Kata Sandi Akun')
                            ->password()
                            ->revealable()
                            ->helperText('Abaikan jika tidak ingin mengubah kata sandi')
                            ->columnSpan(2),

                    ])
                    ->columns(4),
            ]);
    }

    protected function mutateFormDataBeforeFill(array $data): array
    {
        $data['user']       = User::find($data['user_id']);
        $data['officer']    = $data;

        return $data;
    }

    protected function handleRecordUpdate(Model $record, array $data): Model
    {
        $user       = $data['user'];
        $officer    = $data['officer'];

        $record->user->update([
            'name'      => $user['name'],
            'email'     => $user['email'],
            'password'  => empty($user['password']) ? $record->user->password : Hash::make($user['password']),
        ]);

        $record->update([
            'name'          => $record->user->name,
            'identity_number' => $officer['identity_number'],
            'domicile'      => $officer['domicile'],
            'posyandu_id'   => $data['posyandu_id'],
        ]);

        return $record;
    }
}
