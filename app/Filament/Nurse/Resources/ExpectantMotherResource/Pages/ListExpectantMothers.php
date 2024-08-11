<?php

namespace App\Filament\Nurse\Resources\ExpectantMotherResource\Pages;

use App\Filament\Nurse\Resources\ExpectantMotherResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListExpectantMothers extends ListRecords
{
    protected static string $resource = ExpectantMotherResource::class;

    protected function getHeaderActions(): array
    {
        return [
           //
        ];
    }
}
