<?php

namespace App\Filament\Nurse\Widgets;

use App\Models\PosyanduActivity;
use Filament\Widgets\ChartWidget;

class ExpectantMotherByPregnancyWeekChart extends ChartWidget
{
    protected static ?string $heading = 'Jumlah Ibu Hamil per Usia Kehamilan';

    protected function getData(): array
    {
        return [
            'datasets' => [
                [
                    'label' => 'Usia < 18',
                    'data' =>
                    [
                        PosyanduActivity::where('pregnancy_week', '<', 13)->where('posyandu_id', auth()->user()->nurse->posyandu_id)->count(),
                        PosyanduActivity::where('pregnancy_week', '>=', 14)->where('posyandu_id', auth()->user()->nurse->posyandu_id)->where('pregnancy_week', '<=', 26)->count(),
                        PosyanduActivity::where('pregnancy_week', '>', 27)->where('posyandu_id', auth()->user()->nurse->posyandu_id)->count(),
                    ],
                    'backgroundColor' => [
                        'rgb(255, 205, 86)',
                        'rgb(54, 162, 54)',
                        'rgb(255, 99, 99)',
                    ],
                ],
            ],
            'labels' => ['1 - 13 minggu', '14 - 26 minggu', '27 - 40 minggu'],
        ];
    }

    protected function getType(): string
    {
        return 'bar';
    }
}
