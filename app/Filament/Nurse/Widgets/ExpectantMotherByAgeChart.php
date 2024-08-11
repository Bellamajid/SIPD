<?php

namespace App\Filament\Nurse\Widgets;

use App\Models\ExpectantMother;
use Filament\Widgets\ChartWidget;

class ExpectantMotherByAgeChart extends ChartWidget
{
    protected static ?string $heading = 'Jumlah Ibu Hamil per Usia';

    protected function getData(): array
    {
        return [
            'datasets' => [
                [
                    'label' => 'Usia < 18',
                    'data' =>
                    [
                        ExpectantMother::where('age', '<', 18)->where('posyandu_id', auth()->user()->nurse->posyandu_id)->count(),
                        ExpectantMother::where('age', '>=', 18)->where('posyandu_id', auth()->user()->nurse->posyandu_id)->where('age', '<=', 30)->count(),
                        ExpectantMother::where('age', '>', 30)->where('posyandu_id', auth()->user()->nurse->posyandu_id)->count(),
                    ],
                    'backgroundColor' => [
                        'rgb(255, 205, 86)',
                        'rgb(54, 162, 54)',
                        'rgb(255, 99, 99)',
                    ],
                ],
            ],
            'labels' => ['< 18', '18 - 30', '> 30'],
        ];
    }

    protected function getType(): string
    {
        return 'bar';
    }
}
