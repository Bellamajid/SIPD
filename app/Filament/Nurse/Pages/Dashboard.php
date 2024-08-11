<?php

namespace App\Filament\Nurse\Pages;

use Filament\Pages\Page;

class Dashboard extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-home';

    protected static string $view = 'filament.nurse.pages.dashboard';

    protected static ?string $title = 'Dasbor Bidan';

    protected static ?string $navigationLabel = 'Dasbor';

    public function getBreadcrumbs(): array
    {
        return [
            route('filament.bidan.pages.dashboard') => 'Dasbor',
        ];
    }
}
