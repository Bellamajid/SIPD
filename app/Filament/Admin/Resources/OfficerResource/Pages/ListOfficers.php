<?php

namespace App\Filament\Admin\Resources\OfficerResource\Pages;

use App\Filament\Admin\Resources\OfficerResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListOfficers extends ListRecords
{
    protected static string $resource = OfficerResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->label('Tambah Kader')
                ->button()
                ->icon('tabler-pencil-up'),
        ];
    }
}
