<?php

namespace App\Providers\Filament;

use App\Filament\Pages\Auth\Login;
use App\Http\Middleware\FilamentMultiAuthenticate;
use Filament\FontProviders\GoogleFontProvider;
use Filament\Http\Middleware\Authenticate;
use Filament\Http\Middleware\DisableBladeIconComponents;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Filament\Pages;
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

class ExpectantMotherPanelProvider extends PanelProvider
{
    public function panel(Panel $panel): Panel
    {
        return $panel
            ->id('bumil')
            ->path('bumil')
            ->login(Login::class)
            ->viteTheme(['resources/css/theme.css'])
            ->brandLogo(asset('/images/logo-sipd-posyandu.png'))
            ->brandLogoHeight('4em')
            ->profile()
            ->font(family: 'Inter Tight', provider: GoogleFontProvider::class)
            ->discoverResources(in: app_path('Filament/ExpectantMother/Resources'), for: 'App\\Filament\\ExpectantMother\\Resources')
            ->discoverPages(in: app_path('Filament/ExpectantMother/Pages'), for: 'App\\Filament\\ExpectantMother\\Pages')
            ->discoverWidgets(in: app_path('Filament/ExpectantMother/Widgets'), for: 'App\\Filament\\ExpectantMother\\Widgets')
            ->pages([
                Pages\Dashboard::class,
            ])
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
