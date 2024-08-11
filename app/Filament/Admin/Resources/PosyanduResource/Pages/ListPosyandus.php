<?php

namespace App\Filament\Admin\Resources\PosyanduResource\Pages;

use App\Filament\Admin\Resources\PosyanduResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPosyandus extends ListRecords
{
    protected static string $resource = PosyanduResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()
                ->label('Tambah Posyandu')
                ->button()
                ->icon('tabler-pencil-up'),
        ];
    }
}
