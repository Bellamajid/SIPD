<?php

namespace App\Filament\Admin\Resources;

use App\Filament\Admin\Resources\OfficerResource\Pages;
use App\Filament\Admin\Resources\OfficerResource\RelationManagers;
use App\Models\Officer;
use App\Models\Posyandu;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Enums\ActionsPosition;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class OfficerResource extends Resource
{
    protected static ?string $model = Officer::class;

    protected static ?string $navigationIcon = 'tabler-user-star';

    protected static ?string $modelLabel = 'Kader Posyandu';

    protected static ?string $navigationGroup = 'Data Posyandu';

    protected static ?int $navigationSort = 2;

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('identity_number')
                    ->label('Nomor Registrasi Kader')
                    ->sortable()
                    ->searchable(),

                TextColumn::make('name')
                    ->label('Nama Kader')
                    ->sortable()
                    ->searchable(),

                TextColumn::make('posyandu.name')
                    ->label('Posyandu Tempat Bertugas')
                    ->description(fn ($record) => $record->posyandu->address)
                    ->sortable()
                    ->searchable(),

                TextColumn::make('user.email')
                    ->label('Email')
                    ->sortable()
                    ->searchable(),
            ])
            ->defaultSort('id', 'desc')
            ->filters([
                SelectFilter::make('posyandu_id')
                    ->label('Pilih Posyandu')
                    ->options(Posyandu::all()->pluck('name', 'id'))
                    ->searchable()
                    ->native(false),
            ])
            ->actions([
                Tables\Actions\EditAction::make()
                    ->button()
                    ->color('success')
                    ->icon('tabler-edit'),

                Tables\Actions\DeleteAction::make()
                    ->button()
                    ->icon('tabler-trash')
                    ->before(fn ($record) => $record->user->delete()),
            ], position: ActionsPosition::BeforeColumns)
            ->actionsColumnLabel('Opsi')
            ->actionsAlignment('left')
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
            'index' => Pages\ListOfficers::route('/'),
            'create' => Pages\CreateOfficer::route('/create'),
            'edit' => Pages\EditOfficer::route('/{record}/edit'),
        ];
    }
}
