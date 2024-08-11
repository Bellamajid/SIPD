<?php

namespace App\Filament\Admin\Resources\PosyanduResource\Pages;

use App\Filament\Admin\Resources\PosyanduResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditPosyandu extends EditRecord
{
    protected static string $resource = PosyanduResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make()
                ->button()
                ->icon('tabler-trash'),
        ];
    }
}
