<?php

namespace App\Filament\Officer\Resources\ExpectantMotherResource\Pages;

use App\Filament\Officer\Resources\ExpectantMotherResource;
use Filament\Actions;
use Filament\Resources\Pages\Page;

class ListPosyanduActivities extends Page
{
    protected static string $resource = ExpectantMotherResource::class;

    protected static string $view = 'filament.officer.resources.expectant-mother-resource.pages.list-posyandu-activities';

    protected static ?string $title = 'Riwayat Pemeriksaan';

    public $record;

    protected function getHeaderActions(): array
    {
        return [
            Actions\Action::make('create')
                ->label('Buat Riwayat Pemeriksaan')
                ->icon('tabler-pencil-up')
                ->button()
                ->url(fn () => $this->getResource()::getUrl('activities.create', ['record' => $this->record]))
        ];
    }
}
