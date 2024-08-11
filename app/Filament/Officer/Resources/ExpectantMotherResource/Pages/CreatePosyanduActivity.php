<?php

namespace App\Filament\Officer\Resources\ExpectantMotherResource\Pages;

use App\Filament\Officer\Resources\ExpectantMotherResource;
use App\Models\ExpectantMother;
use App\Models\PosyanduActivity;
use Carbon\Carbon;
use Filament\Actions\Action;
use Filament\Forms\Components\Checkbox;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\Placeholder;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Notifications\Notification;
use Filament\Pages\Concerns\InteractsWithFormActions;
use Filament\Resources\Pages\Page;

class CreatePosyanduActivity extends Page
{
    use InteractsWithFormActions;

    protected static string $resource = ExpectantMotherResource::class;

    protected static string $view = 'filament.officer.resources.expectant-mother-resource.pages.create-posyandu-activity';

    protected static ?string $title = 'Buat Riwayat Pemeriksaan';

    public $record;
    public ?array $data = [];

    public function mount(ExpectantMother $record): void
    {
        $this->record = $record;

        $this->form->fill(['mother' => $this->record]);
    }

    public function form(Form $form): Form
    {
        return $form->schema([
            Section::make('Informasi Pribadi')
                ->collapsible()
                ->collapsed()
                ->schema([
                    Placeholder::make('mother.name')
                        ->label('Nama Ibu Hamil')
                        ->content(fn () => $this->record->name)
                        ->columnSpan(1),

                    Placeholder::make('mother.spouse_name')
                        ->label('Nama Suami')
                        ->content(fn () => $this->record->spouse_name)
                        ->columnSpan(1),

                    Placeholder::make('mother.age')
                        ->label('Usia Ibu Hamil')
                        ->content(fn () => $this->record->age)
                        ->columnSpan(1),

                    Placeholder::make('mother.spouse_age')
                        ->label('Usia Suami')
                        ->content(fn () => $this->record->spouse_age)
                        ->columnSpan(1),

                    Placeholder::make('mother.no_of_pregnancy')
                        ->label('Kehamilan Ke-')
                        ->content(fn () => $this->record->no_of_pregnancy)
                        ->columnSpan(1),

                    Grid::make()->columnSpan(1),

                    Placeholder::make('mother.hpht')
                        ->label('Hari Pertama Haid Terakhir (HPHT)')
                        ->content(fn () => Carbon::parse($this->record->hpht)->translatedFormat('j F Y'))
                        ->columnSpan(1),

                    Placeholder::make('mother.hpht')
                        ->label('Prakiraan Bersalin')
                        ->content(fn () => Carbon::parse($this->record->tp)->translatedFormat('j F Y'))
                        ->columnSpan(1),
                ])
                ->columns(2),

            Section::make('Hasil Riwayat Pemeriksaan')
                ->schema([
                    TextInput::make('pregnancy_week')
                        ->numeric()
                        ->minValue(1)
                        ->label('Umur Kehamilan')
                        ->placeholder('Masukkan Umur Kehamilan')
                        ->suffix('Minggu')
                        ->required()
                        ->columnSpan(1),

                    Grid::make()->columnSpan(1),

                    TextInput::make('weight')
                        ->numeric()
                        ->minValue(1)
                        ->label('Berat Badan')
                        ->placeholder('Masukkan Berat Badan')
                        ->suffix('kg')
                        ->required()
                        ->columnSpan(1),

                    TextInput::make('height')
                        ->numeric()
                        ->minValue(1)
                        ->label('Tinggi Badan')
                        ->placeholder('Masukkan Tinggi Badan')
                        ->suffix('cm')
                        ->required()
                        ->columnSpan(1),

                    TextInput::make('lila')
                        ->numeric()
                        ->minValue(1)
                        ->label('Lingkar Lengan Atas (LiLA)')
                        ->placeholder('Masukkan Lingkar Lengan Atas')
                        ->suffix('cm')
                        ->required()
                        ->columnSpan(1),

                    Grid::make()->columnSpan(1),

                    TextInput::make('blood_pressure_level')
                        ->label('Tekanan Darah')
                        ->placeholder('Masukkan Tekanan Darah')
                        ->suffix('mm Hg')
                        ->required()
                        ->columnSpan(1),

                    TextInput::make('blood_sugar_level')
                        ->numeric()
                        ->minValue(1)
                        ->label('Kadar Gula Darah')
                        ->placeholder('Masukkan Kadar Gula Darah')
                        ->suffix('mmol/L')
                        ->required()
                        ->columnSpan(1),

                    TextInput::make('systolic_bp')
                        ->numeric()
                        ->minValue(1)
                        ->label('Sistolik Tekanan Darah')
                        ->placeholder('Masukkan Sistolik Tekanan Darah')
                        ->suffix('mm Hg')
                        ->required()
                        ->columnSpan(1),

                    TextInput::make('diastolic_bp')
                        ->numeric()
                        ->minValue(1)
                        ->label('Diastolik Tekanan Darah')
                        ->placeholder('Masukkan Diastolik Tekanan Darah')
                        ->suffix('mm Hg')
                        ->required()
                        ->columnSpan(1),

                    TextInput::make('body_temperature')
                        ->numeric()
                        ->minValue(1)
                        ->label('Suhu Tubuh')
                        ->placeholder('Masukkan Suhu Tubuh')
                        ->suffix('° C')
                        ->required()
                        ->columnSpan(1),

                    TextInput::make('heart_rate')
                        ->numeric()
                        ->minValue(1)
                        ->label('Denyut Nadi')
                        ->placeholder('Masukkan Denyut Nadi')
                        ->suffix('bpm')
                        ->required()
                        ->columnSpan(1),

                    Checkbox::make('has_vaccinated')
                        ->label('Sudah Vaksin?')
                        ->columnSpan(1)
                        ->required(),

                    Grid::make()->columnSpan(1),

                    Select::make('risk_level')
                        ->label('Tingkat Risiko Kehamilan')
                        ->options([
                            'low' => 'Rendah',
                            'mid' => 'Menengah',
                            'high' => 'Tinggi',
                        ])
                        ->native(false)
                        ->columnSpan(1)
                        ->required(),

                    Grid::make()->columnSpan(1),

                    RichEditor::make('complaint')
                        ->label('Keluhan')
                        ->toolbarButtons([
                            'bold',
                            'italic',
                            'underline',
                            'bulletList',
                        ]),

                    RichEditor::make('note')
                        ->label('Catatan')
                        ->toolbarButtons([
                            'bold',
                            'italic',
                            'underline',
                            'bulletList',
                        ]),
                ])
                ->columns(2),

        ])
            ->statePath('data');
    }

    public function getCreateFormAction()
    {
        return Action::make('create')
            ->label('Submit Data Pemeriksaan')
            ->submit('create');
    }

    public function getCancelFormAction()
    {
        return Action::make('cancel')
            ->color('gray')
            ->label('Batal')
            ->url(fn () => static::$resource::getUrl('activities', ['record' => $this->record]));
    }

    protected function getFormActions(): array
    {
        return [
            $this->getCreateFormAction(),
            $this->getCancelFormAction(),
        ];
    }

    public function create(): void
    {
        PosyanduActivity::create(array_merge([
            'posyandu_id' => auth()->user()->officer->posyandu_id,
            'officer_id' => auth()->user()->officer->id,
            'expectant_mother_id' => $this->record->id,
        ], $this->form->getState()));

        Notification::make()
            ->title('Data berhasil disimpan')
            ->success()
            ->send();

        redirect()->to(static::$resource::getUrl('activities', ['record' => $this->record]));
    }
}
