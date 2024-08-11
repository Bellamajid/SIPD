<?php

namespace App\Http\Middleware;

use App\Models\User;
use Closure;
use Filament\Facades\Filament;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class FilamentMultiAuthenticate
{
    public function handle(Request $request, Closure $next): Response
    {
        $authUser = User::find(Filament::auth()->user()?->id);
        $authRole = $authUser?->getRoleNames()[0];

        if (!empty($authUser)) {
            $matchRoleRoute = match ($authRole) {
                'officer'       => 'kader',
                'nurse'         => 'bidan',
                'admin'         => 'admin',
                'expectant_mother' => 'bumil',
            };

            if (!$request->is($matchRoleRoute . '*')) {
                return redirect()->route('filament.' . $matchRoleRoute . '.auth.login');
            }
        }

        return $next($request);
    }
}
