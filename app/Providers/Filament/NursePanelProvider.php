<?php

namespace App\Providers\Filament;

use App\Filament\Nurse\Pages\Dashboard;
use App\Filament\Pages\Auth\Login;
use App\Http\Middleware\FilamentMultiAuthenticate;
use Filament\FontProviders\GoogleFontProvider;
use Filament\Http\Middleware\Authenticate;
use Filament\Http\Middleware\DisableBladeIconComponents;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Filament\Panel;
use Filament\PanelProvider;
use Filament\Support\Colors\Color;
use Filament\Widgets;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Cookie\Middleware\EncryptCookies;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\Session\Middleware\AuthenticateSession;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\View\Middleware\ShareErrorsFromSession;

class NursePanelProvider extends PanelProvider
{
    public function panel(Panel $panel): Panel
    {
        return $panel
            ->id('bidan')
            ->path('bidan')
            ->login(Login::class)
            ->viteTheme(['resources/css/theme.css'])
            ->brandLogo(asset('/images/logo-sipd-posyandu.png'))
            ->brandLogoHeight('4em')
            ->font(family: 'Inter Tight', provider: GoogleFontProvider::class)
            ->discoverResources(in: app_path('Filament/Nurse/Resources'), for: 'App\\Filament\\Nurse\\Resources')
            ->discoverPages(in: app_path('Filament/Nurse/Pages'), for: 'App\\Filament\\Nurse\\Pages')
            ->pages([
                Dashboard::class,
            ])
            ->discoverWidgets(in: app_path('Filament/Nurse/Widgets'), for: 'App\\Filament\\Nurse\\Widgets')
            ->widgets([
                Widgets\AccountWidget::class,
            ])
            ->middleware([
                EncryptCookies::class,
                AddQueuedCookiesToResponse::class,
                StartSession::class,
                AuthenticateSession::class,
                ShareErrorsFromSession::class,
                VerifyCsrfToken::class,
                SubstituteBindings::class,
                DisableBladeIconComponents::class,
                DispatchServingFilamentEvent::class,
                FilamentMultiAuthenticate::class,
            ])
            ->authMiddleware([
                Authenticate::class,
            ]);
    }
}
