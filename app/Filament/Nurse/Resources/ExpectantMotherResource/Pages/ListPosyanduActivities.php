<?php

namespace App\Filament\Nurse\Resources\ExpectantMotherResource\Pages;

use App\Filament\Nurse\Resources\ExpectantMotherResource;
use Filament\Actions;
use Filament\Resources\Pages\Page;

class ListPosyanduActivities extends Page
{
    protected static string $resource = ExpectantMotherResource::class;

    protected static string $view = 'filament.nurse.resources.expectant-mother-resource.pages.list-posyandu-activities';

    protected static ?string $title = 'Riwayat Pemeriksaan';

    public $record;

    protected function getHeaderActions(): array
    {
        return [
          //
        ];
    }
}
