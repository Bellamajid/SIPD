<?php

namespace App\Filament\Nurse\Resources\ExpectantMotherResource\Tables;

use App\Models\ExpectantMother;
use App\Models\PosyanduActivity;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Tables;
use Filament\Tables\Columns\ColumnGroup;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Concerns\InteractsWithTable;
use Filament\Tables\Contracts\HasTable;
use Filament\Tables\Enums\ActionsPosition;
use Filament\Tables\Grouping\Group;
use Filament\Tables\Table;
use Livewire\Component;

class TablePosyanduActivities extends Component implements HasForms, HasTable
{
    use InteractsWithForms;
    use InteractsWithTable;

    public $expectantMother;

    public function mount(ExpectantMother $expectantMother)
    {
        $this->expectantMother = $expectantMother;
    }

    public function table(Table $table): Table
    {
        return $table
            ->query(
                PosyanduActivity::query()->where('expectant_mother_id', $this->expectantMother->id),
            )
            ->heading('Riwayat Pemeriksaan')
            ->columns([
                TextColumn::make('risk_level')
                    ->label('Tingkat Risiko Kehamilan')
                    ->formatStateUsing(fn ($state) => match ($state) {
                        'low' => 'Rendah',
                        'mid' => 'Menengah',
                        'high' => 'Tinggi'
                    })
                    ->badge()
                    ->color(fn ($state) => match ($state) {
                        'low' => 'success',
                        'mid' => 'warning',
                        'high' => 'danger'
                    })
                    ->alignCenter()
                    ->sortable(),

                TextColumn::make('created_at')
                    ->label('Tanggal Pemeriksaan')
                    ->date('l, j F Y')
                    ->sortable(),

                TextColumn::make('officer.name')
                    ->label('Petugas Pemeriksa')
                    ->sortable(),

                IconColumn::make('has_vaccinated')
                    ->label('Sudah Vaksin')
                    ->icon(fn ($state) => $state === 1 ? 'tabler-check' : 'tabler-x')
                    ->color(fn ($state) => $state === 1 ? 'success' : 'danger')
                    ->alignCenter()
                    ->sortable(),

                ColumnGroup::make('Hasil Pemeriksaan')
                    ->columns([
                        TextColumn::make('height')
                            ->label('Tinggi Badan')
                            ->formatStateUsing(fn ($state) => $state . ' cm')
                            ->alignCenter()
                            ->sortable(),

                        TextColumn::make('weight')
                            ->label('Berat Badan')
                            ->formatStateUsing(fn ($state) => $state . ' kg')
                            ->alignCenter()
                            ->sortable(),

                        TextColumn::make('blood_pressure_level')
                            ->label('Tekanan Darah')
                            ->formatStateUsing(fn ($state) => $state . ' mm Hg')
                            ->alignCenter()
                            ->sortable(),

                        TextColumn::make('blood_sugar_level')
                            ->label('Kadar Gula Darah')
                            ->formatStateUsing(fn ($state) => number_format($state, 2, ',', '.') . ' mmol/L')
                            ->alignCenter()
                            ->sortable(),

                        TextColumn::make('systolic_bp')
                            ->label('Sistolik')
                            ->formatStateUsing(fn ($state) => number_format($state, 2, ',', '.') . ' mm Hg')
                            ->alignCenter()
                            ->sortable(),

                        TextColumn::make('diastolic_bp')
                            ->label('Diastolik')
                            ->formatStateUsing(fn ($state) => number_format($state, 2, ',', '.') . ' mm Hg')
                            ->alignCenter()
                            ->sortable(),

                        TextColumn::make('lila')
                            ->label('LiLA')
                            ->formatStateUsing(fn ($state) => number_format($state, 2, ',', '.') . ' cm')
                            ->alignCenter()
                            ->sortable(),

                        TextColumn::make('body_temperature')
                            ->label('Suhu Tubuh')
                            ->formatStateUsing(fn ($state) => number_format($state, 2, ',', '.') . ' ° C')
                            ->alignCenter()
                            ->sortable(),

                        TextColumn::make('body_temperature')
                            ->label('Suhu Tubuh')
                            ->formatStateUsing(fn ($state) => number_format($state, 2, ',', '.') . ' ° C')
                            ->alignCenter()
                            ->sortable(),

                        TextColumn::make('heart_rate')
                            ->label('Denyut Nadi')
                            ->formatStateUsing(fn ($state) => number_format($state, 2, ',', '.') . ' bpm')
                            ->alignCenter()
                            ->sortable(),
                    ]),
                    
                TextColumn::make('complaint')
                    ->label('Keluhan')
                    ->wrap()
                    ->alignLeft()
                    ->sortable(),

                TextColumn::make('note')
                    ->label('Catatan')
                    ->wrap()
                    ->alignLeft()
                    ->sortable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                //
            ])
            ->actionsAlignment('left')
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    //
                ]),
            ]);
    }

    public function render()
    {
        return <<<'blade'
        <div>{{ $this->table }}</div>
        blade;
    }
}
