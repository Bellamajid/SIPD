<?php

namespace App\Filament\Admin\Pages;

use Filament\Pages\Page;

class Dashboard extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-home';

    protected static string $view = 'filament.admin.pages.dashboard';

    protected static ?string $title = 'Dasbor Administrator';

    protected static ?string $navigationLabel = 'Dasbor';

    public function getBreadcrumbs(): array
    {
        return [
            route('filament.admin.pages.dashboard') => 'Dasbor',
        ];
    }
}
