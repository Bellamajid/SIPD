<?php

namespace App\Filament\Admin\Widgets;

use App\Models\Posyandu;
use Filament\Widgets\ChartWidget;

class PosyandusChart extends ChartWidget
{
    protected static ?string $heading = 'Jumlah Ibu Hamil per Posyandu';

    protected function getData(): array
    {
        return [
            'datasets' => [
                [
                    'label' => 'Nama Posyandu',
                    'data' => Posyandu::withCount('expectant_mothers')->get()->pluck('expectant_mothers_count'),
                    'backgroundColor' => '#008CB5',
                ]
            ],
            'labels' => Posyandu::all()->pluck('name'),
        ];
    }

    protected function getType(): string
    {
        return 'bar';
    }
}
