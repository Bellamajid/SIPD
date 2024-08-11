<?php

namespace App\Filament\ExpectantMother\Resources;

use App\Filament\ExpectantMother\Resources\PosyanduActivityResource\Pages;
use App\Filament\ExpectantMother\Resources\PosyanduActivityResource\RelationManagers;
use App\Models\PosyanduActivity;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\ColumnGroup;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PosyanduActivityResource extends Resource
{
    protected static ?string $model = PosyanduActivity::class;

    protected static ?string $navigationIcon = 'tabler-history';

    protected static ?string $navigationGroup = 'Menu Utama';
    
    protected static ?string $modelLabel = 'Riwayat Pemeriksaan';

    protected static ?int $navigationSort = 2;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->modifyQueryUsing(fn ($query) => $query->where('expectant_mother_id', auth()->user()->expectant_mother->id))
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
                    ])
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

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPosyanduActivities::route('/'),
        ];
    }
}
