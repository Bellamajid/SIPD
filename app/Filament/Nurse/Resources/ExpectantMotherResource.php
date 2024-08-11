<?php

namespace App\Filament\Nurse\Resources;

use App\Filament\Nurse\Resources\ExpectantMotherResource\Pages;
use App\Filament\Nurse\Resources\ExpectantMotherResource\RelationManagers;
use App\Models\ExpectantMother;
use App\Models\Posyandu;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Enums\ActionsPosition;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ExpectantMotherResource extends Resource
{
    protected static ?string $model = ExpectantMother::class;

    protected static ?string $navigationIcon = 'tabler-hearts';

    protected static ?string $modelLabel = 'Ibu Hamil';

    protected static ?string $navigationGroup = 'Data Posyandu';

    protected static ?int $navigationSort = 2;

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('registration_number')
                    ->label('Nomor Registrasi')
                    ->searchable()
                    ->sortable(),

                TextColumn::make('posyandu.name')
                    ->label('Nama Posyandu')
                    ->searchable()
                    ->sortable(),

                TextColumn::make('name')
                    ->label('Nama Ibu Hamil')
                    ->searchable()
                    ->sortable(),

                TextColumn::make('spouse_name')
                    ->label('Nama Suami')
                    ->searchable()
                    ->sortable(),

                TextColumn::make('age')
                    ->label('Usia Ibu Hamil')
                    ->searchable()
                    ->sortable(),

                TextColumn::make('no_of_pregnancy')
                    ->label('Kehamilan Ke-')
                    ->searchable()
                    ->sortable(),

                TextColumn::make('hpht')
                    ->label('HPHT')
                    ->date('j F Y')
                    ->searchable()
                    ->sortable(),

                TextColumn::make('tp')
                    ->label('Perkiraan Bersalin')
                    ->date('j F Y')
                    ->searchable()
                    ->sortable(),
            ])
            ->filters([
                SelectFilter::make('posyandu_id')
                    ->label('Cari Posyandu')
                    ->options(Posyandu::all()->pluck('name', 'id'))
                    ->native(false)
                    ->searchable(),
            ])
            ->defaultSort('id', 'desc')
            ->actions([
                Tables\Actions\Action::make('view_activities')
                    ->label('Lihat Riwayat')
                    ->button()
                    ->color('gray')
                    ->url(fn ($record) => static::getUrl('activities', ['record' => $record]))
                    ->icon('tabler-list'),
            ], position: ActionsPosition::BeforeColumns)
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    // Tables\Actions\DeleteBulkAction::make(),
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
            'index' => Pages\ListExpectantMothers::route('/'),
            'activities' => Pages\ListPosyanduActivities::route('/{record}/activities'),
        ];
    }
}
