<?php

namespace App\Filament\Admin\Resources;

use App\Filament\Admin\Resources\NurseResource\Pages;
use App\Filament\Admin\Resources\NurseResource\RelationManagers;
use App\Models\Nurse;
use App\Models\Posyandu;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Enums\ActionsPosition;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class NurseResource extends Resource
{
    protected static ?string $model = Nurse::class;

    protected static ?string $navigationIcon = 'tabler-users';

    protected static ?string $modelLabel = 'Bidan Posyandu';

    protected static ?string $navigationGroup = 'Data Posyandu';

    protected static ?int $navigationSort = 3;

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
            ->columns([
                TextColumn::make('identity_number')
                    ->label('Nomor Registrasi Bidan')
                    ->sortable()
                    ->searchable(),

                TextColumn::make('name')
                    ->label('Nama Bidan')
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
                    Tables\Actions\DeleteBulkAction::make(),
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
            'index' => Pages\ListNurses::route('/'),
            'create' => Pages\CreateNurse::route('/create'),
            'edit' => Pages\EditNurse::route('/{record}/edit'),
        ];
    }
}
