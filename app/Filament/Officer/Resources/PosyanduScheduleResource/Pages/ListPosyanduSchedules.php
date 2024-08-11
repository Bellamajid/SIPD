<?php

namespace App\Filament\Officer\Resources\PosyanduScheduleResource\Pages;

use App\Filament\Officer\Resources\PosyanduScheduleResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use Filament\Support\Enums\MaxWidth;

class ListPosyanduSchedules extends ListRecords
{
    protected static string $resource = PosyanduScheduleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->label('Tambah Jadwal Posyandu')
                ->button()
                ->icon('tabler-pencil-up')
                ->modalWidth(MaxWidth::ExtraLarge)
                ->modalHeading('Tambah Jadwal Posyandu')
                ->createAnother(false),
        ];
    }
}
