<?php

namespace App\Filament\Officer\Resources\ExpectantMotherResource\Pages;

use App\Filament\Officer\Resources\ExpectantMotherResource;
use App\Models\Posyandu;
use App\Models\User;
use Filament\Actions;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Pages\EditRecord;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;

class EditExpectantMother extends EditRecord
{
    protected static string $resource = ExpectantMotherResource::class;

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
                Section::make('Informasi Pribadi Ibu Hamil')
                    ->schema([
                        TextInput::make('mother.registration_number')
                            ->label('Nomor Registrasi Ibu Hamil')
                            ->placeholder('Masukkan Nomor Registrasi Ibu Hamil')
                            ->required()
                            ->columnSpan(2),

                        Grid::make()->columnSpan(2),

                        TextInput::make('mother.name')
                            ->label('Nama Ibu Hamil')
                            ->placeholder('Masukkan Nama Ibu Hamil')
                            ->required()
                            ->columnSpan(2),

                        TextInput::make('mother.spouse_name')
                            ->label('Nama Suami')
                            ->placeholder('Masukkan Nama Suami')
                            ->required()
                            ->columnSpan(2),

                        TextInput::make('mother.age')
                            ->numeric()
                            ->minValue(1)
                            ->label('Usia Ibu Hamil')
                            ->placeholder('Masukkan Usia Ibu Hamil')
                            ->required()
                            ->columnSpan(2),

                        TextInput::make('mother.spouse_age')
                            ->numeric()
                            ->minValue(1)
                            ->label('Usia Suami')
                            ->placeholder('Masukkan Usia Suami')
                            ->required()
                            ->columnSpan(2),

                        Select::make('mother.education_level')
                            ->label('Taraf Pendidikan Ibu Hamil')
                            ->options([
                                'Tidak Tamat Sekolah'   => 'Tidak Tamat Sekolah',
                                'SD'                    => 'SD / MI / Sederajat',
                                'SMP'                   => 'SMP / MTs / Sederajat',
                                'SMA'                   => 'SMA / SMK / MA / Sederajat',
                                'PT'                    => 'Perguruan Tinggi',
                            ])
                            ->native(false)
                            ->required()
                            ->columnSpan(2),

                        Select::make('mother.spouse_education_level')
                            ->label('Taraf Pendidikan Suami')
                            ->options([
                                'Tidak Tamat Sekolah'   => 'Tidak Tamat Sekolah',
                                'SD'                    => 'SD / MI / Sederajat',
                                'SMP'                   => 'SMP / MTs / Sederajat',
                                'SMA'                   => 'SMA / SMK / MA / Sederajat',
                                'PT'                    => 'Perguruan Tinggi',
                            ])
                            ->native(false)
                            ->required()
                            ->columnSpan(2),

                        TextInput::make('mother.occupation')
                            ->label('Pekerjaan Ibu Hamil')
                            ->placeholder('Masukkan Pekerjaan Ibu Hamil')
                            ->required()
                            ->columnSpan(2),

                        TextInput::make('mother.spouse_occupation')
                            ->label('Pekerjaan Suami')
                            ->placeholder('Masukkan Pekerjaan Suami')
                            ->required()
                            ->columnSpan(2),

                        Textarea::make('mother.address')
                            ->label('Alamat / Domisili')
                            ->placeholder('Masukkan Alamat / Domisili Ibu Hamil')
                            ->rows(5)
                            ->required()
                            ->columnSpan(2),
                    ])
                    ->columns(4),

                Section::make('Catatan Kehamilan')
                    ->schema([
                        TextInput::make('mother.no_of_pregnancy')
                            ->label('Kehamilan Ke-')
                            ->numeric()
                            ->minValue(1)
                            ->placeholder('Masukkan Urutan Kehamilan')
                            ->required()
                            ->columnSpan(1),

                        DatePicker::make('mother.hpht')
                            ->label('Hari Pertama Haid Terakhir (HPHT)')
                            ->placeholder('Masukkan Hari Pertama Haid Terakhir (HPHT)')
                            ->required()
                            ->native(false)
                            ->suffixIcon('tabler-calendar')
                            ->columnSpan(1),

                        DatePicker::make('mother.tp')
                            ->label('Tanggal Prakiraan Bersalin')
                            ->placeholder('Masukkan Tanggal Prakiraan Bersalin')
                            ->required()
                            ->minDate(fn (callable $get) => $get('mother.hpht'))
                            ->native(false)
                            ->suffixIcon('tabler-calendar')
                            ->columnSpan(1),
                    ])
                    ->columns(3),
                Section::make('Data Akun SIPD')
                    ->schema([
                        TextInput::make('user.email')
                            ->label('Email')
                            ->email()
                            ->unique(table: 'users', column: 'email', ignorable: fn ($record) => $record->user)
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
        $data['mother']     = $data;

        return $data;
    }

    protected function handleRecordUpdate(Model $record, array $data): Model
    {
        $user      = $data['user'];
        $mother    = $data['mother'];

        $record->user->update([
            'name'      => $mother['name'],
            'email'     => $user['email'],
            'password'  => empty($user['password']) ? $record->user->password : Hash::make($user['password']),
        ]);

        $posyandu = auth()->user()->officer->posyandu;

        $record->update(array_merge($mother, ['user_id' => $record->user->id, 'posyandu_id' => $posyandu->id]));

        return $record;
    }
}
