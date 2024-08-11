<x-filament-panels::page>
    <div class="grid grid-cols-3 gap-4">
        <div class="col-span-2">
            @livewire(App\Filament\Admin\Widgets\PosyandusChart::class)
        </div>
        <div>
            @livewire(App\Filament\Admin\Widgets\ExpectantMotherByRiskLevelChart::class)
        </div>
    </div>
</x-filament-panels::page>