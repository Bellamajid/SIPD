<?php

namespace App\Filament\Officer\Resources;

use App\Filament\Officer\Resources\PosyanduScheduleResource\Pages;
use App\Filament\Officer\Resources\PosyanduScheduleResource\RelationManagers;
use App\Models\Officer;
use App\Models\PosyanduSchedule;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Enums\ActionsPosition;
use Filament\Tables\Grouping\Group;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class PosyanduScheduleResource extends Resource
{
    protected static ?string $model = PosyanduSchedule::class;

    protected static ?string $navigationIcon = 'tabler-calendar-clock';

    protected static ?string $modelLabel = 'Jadwal Posyandu';

    protected static ?string $navigationGroup = 'Data Posyandu';

    protected static ?int $navigationSort = 2;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('officer_id')
                    ->label('Petugas Posyandu')
                    ->options(Officer::where('posyandu_id', auth()->user()->officer->posyandu_id)->get()->pluck('name', 'id'))
                    ->native(false)
                    ->required(),

                DateTimePicker::make('date')
                    ->label('Tanggal dan Waktu')
                    ->placeholder('Pilih Tanggal')
                    ->native(false)
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->modifyQueryUsing(fn ($query) => $query->where('posyandu_id', auth()->user()->officer->posyandu_id))
            ->columns([
                TextColumn::make('date')
                    ->label('Tanggal')
                    ->date('l, j F Y')
                    ->sortable()
                    ->searchable(),

                TextColumn::make('time')
                    ->label('Waktu')
                    ->date('H:i')
                    ->sortable()
                    ->searchable(),

                TextColumn::make('posyandu.name')
                    ->label('Nama Posyandu')
                    ->description(fn ($record) => $record->posyandu->address)
                    ->sortable()
                    ->searchable(),

                TextColumn::make('officer.name')
                    ->label('Petugas Posyandu')
                    ->sortable()
                    ->searchable(),
            ])
            ->filters([
                //
            ])
            ->defaultSort('id', 'desc')
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
            ->groups([
                Group::make('date')
                    ->label('Bulan')
                    ->date('Y-m')
            ])
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
            'index' => Pages\ListPosyanduSchedules::route('/'),
        ];
    }
}
