<?php

namespace App\Filament\ExpectantMother\Resources\PosyanduActivityResource\Pages;

use App\Filament\ExpectantMother\Resources\PosyanduActivityResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPosyanduActivities extends ListRecords
{
    protected static string $resource = PosyanduActivityResource::class;

    protected function getHeaderActions(): array
    {
        return [
            // Actions\CreateAction::make(),
        ];
    }
}
