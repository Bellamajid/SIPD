<?php

namespace App\Filament\Officer\Resources\ExpectantMotherResource\Pages;

use App\Filament\Officer\Resources\ExpectantMotherResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListExpectantMothers extends ListRecords
{
    protected static string $resource = ExpectantMotherResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->label('Tambah Ibu Hamil')
                ->button()
                ->icon('tabler-pencil-up'),
        ];
    }
}
