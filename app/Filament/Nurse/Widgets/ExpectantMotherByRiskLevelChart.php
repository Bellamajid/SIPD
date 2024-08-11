<?php

namespace App\Filament\Nurse\Widgets;

use App\Models\PosyanduActivity;
use Filament\Widgets\ChartWidget;

class ExpectantMotherByRiskLevelChart extends ChartWidget
{
    protected static ?string $heading = 'Tingkat Risiko Kehamilan';

    protected function getData(): array
    {
        return [
            'datasets' => [
                [
                    'data' => [
                        PosyanduActivity::where('risk_level', 'low')->where('posyandu_id', auth()->user()->nurse->posyandu_id)->count(),
                        PosyanduActivity::where('risk_level', 'mid')->where('posyandu_id', auth()->user()->nurse->posyandu_id)->count(),
                        PosyanduActivity::where('risk_level', 'high')->where('posyandu_id', auth()->user()->nurse->posyandu_id)->count(),
                    ],
                    'backgroundColor' => [
                        'rgb(255, 205, 86)',
                        'rgb(54, 162, 54)',
                        'rgb(255, 99, 99)',
                    ],
                ]
            ],
            'labels' => ['Risiko Rendah', 'Risiko Menengah', 'Risiko Tinggi'],
        ];
    }

    protected function getOptions(): array
    {
        return [
            'scales' => [
                'y' => [
                    'display' => false,
                ],
                'x' => [
                    'display' => false,
                ],
            ],
        ];
    }

    protected function getType(): string
    {
        return 'doughnut';
    }
}
