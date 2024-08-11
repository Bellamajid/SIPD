<?php

namespace App\Filament\Officer\Resources;

use App\Filament\Officer\Resources\ExpectantMotherResource\Pages;
use App\Filament\Officer\Resources\ExpectantMotherResource\RelationManagers;
use App\Models\ExpectantMother;
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

class ExpectantMotherResource extends Resource
{
    protected static ?string $model = ExpectantMother::class;

    protected static ?string $navigationIcon = 'tabler-hearts';

    protected static ?string $modelLabel = 'Ibu Hamil';

    protected static ?string $navigationGroup = 'Data Posyandu';

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
            ->modifyQueryUsing(fn ($query) => $query->where('posyandu_id', auth()->user()->officer->posyandu_id))
            ->columns([
                TextColumn::make('registration_number')
                    ->label('Nomor Registrasi')
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

                Tables\Actions\EditAction::make()
                    ->button()
                    ->color('success')
                    ->icon('tabler-edit'),

                Tables\Actions\DeleteAction::make()
                    ->button()
                    ->icon('tabler-trash')
                    ->before(fn ($record) => $record->user->delete()),
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
            'create' => Pages\CreateExpectantMother::route('/create'),
            'edit' => Pages\EditExpectantMother::route('/{record}/edit'),

            'activities' => Pages\ListPosyanduActivities::route('/{record}/activities'),
            'activities.create' => Pages\CreatePosyanduActivity::route('/{record}/activities/create'),
            'activities.edit' => Pages\EditPosyanduActivity::route('/{record}/activities/{id}/edit'),
        ];
    }
}
