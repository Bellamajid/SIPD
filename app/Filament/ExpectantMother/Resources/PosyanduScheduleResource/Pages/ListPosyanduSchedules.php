<?php

namespace App\Filament\ExpectantMother\Resources\PosyanduScheduleResource\Pages;

use App\Filament\ExpectantMother\Resources\PosyanduScheduleResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use Filament\Support\Enums\MaxWidth;

class ListPosyanduSchedules extends ListRecords
{
    protected static string $resource = PosyanduScheduleResource::class;

    protected function getHeaderActions(): array
    {
        return [
            //
        ];
    }
}
