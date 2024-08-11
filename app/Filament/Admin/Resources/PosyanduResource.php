<?php

namespace App\Filament\Admin\Resources;

use App\Filament\Admin\Resources\PosyanduResource\Pages;
use App\Filament\Admin\Resources\PosyanduResource\RelationManagers;
use App\Models\Officer;
use App\Models\Posyandu;
use Filament\Forms;
use Filament\Forms\Components\Grid;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Enums\ActionsPosition;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PosyanduResource extends Resource
{
    protected static ?string $model = Posyandu::class;

    protected static ?string $navigationIcon = 'tabler-building-hospital';

    protected static ?string $modelLabel = 'Posyandu';

    protected static ?string $navigationGroup = 'Data Posyandu';

    protected static ?int $navigationSort = 1;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Data Posyandu')
                    ->schema([
                        TextInput::make('code')
                            ->label('Kode Posyandu')
                            ->required()
                            ->columnSpan(2),

                        Grid::make()->columnSpan(2),

                        TextInput::make('name')
                            ->label('Nama Posyandu')
                            ->required()
                            ->columnSpan(2),

                        Grid::make()->columnSpan(2),

                        Textarea::make('address')
                            ->label('Alamat')
                            ->required()
                            ->rows(5)
                            ->columnSpan(2),

                        Grid::make()->columnSpan(2),
                    ])
                    ->columns(4)
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('code')
                    ->label('Kode Posyandu')
                    ->sortable()
                    ->searchable(),

                TextColumn::make('name')
                    ->label('Nama Posyandu')
                    ->description(fn ($record) => $record->address)
                    ->sortable()
                    ->searchable(),

                TextColumn::make('officer.name')
                    ->label('Nama Ketua')
                    ->sortable()
                    ->searchable(),
            ])
            ->defaultSort('id', 'desc')
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make()
                    ->button()
                    ->color('success')
                    ->icon('tabler-edit'),

                Tables\Actions\DeleteAction::make()
                    ->button()
                    ->icon('tabler-trash'),
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
            'index' => Pages\ListPosyandus::route('/'),
            'create' => Pages\CreatePosyandu::route('/create'),
            'edit' => Pages\EditPosyandu::route('/{record}/edit'),
        ];
    }
}
