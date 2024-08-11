<x-filament-panels::page>
    <div class="grid grid-cols-2 gap-4">
        <div>
            @livewire(App\Filament\Nurse\Widgets\ExpectantMotherByAgeChart::class)
        </div>
        <div>
            @livewire(App\Filament\Nurse\Widgets\ExpectantMotherByPregnancyWeekChart::class)
        </div>
        <div>
            @livewire(App\Filament\Nurse\Widgets\ExpectantMotherByRiskLevelChart::class)
        </div>
    </div>
</x-filament-panels::page>