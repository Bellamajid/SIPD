<?php

namespace App\Filament\Officer\Pages;

use Filament\Actions\Action;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Fieldset;
use Filament\Forms\Components\Grid;
use Filament\Forms\Form;
use Filament\Pages\Concerns\InteractsWithFormActions;
use Filament\Pages\Page;

class ExpectantMotherReport extends Page
{
    use InteractsWithFormActions;

    protected static ?string $navigationIcon = 'tabler-report';

    protected static ?string $title = 'Laporan Ibu Hamil';

    protected static ?string $navigationGroup = 'Laporan Posyandu';

    protected static ?int $navigationSort = 3;

    protected static string $view = 'filament.officer.pages.expectant-mother-report';

    public ?array $data = [];

    public function mount(): void
    {
        $this->form->fill([]);
    }

    public function getBreadcrumbs(): array
    {
        return [
            route('filament.kader.pages.dashboard') => 'Dasbor',
            route('filament.kader.pages.expectant-mother-report') => static::$title,
        ];
    }

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Fieldset::make('Pilih Tanggal Laporan')
                    ->schema([
                        DatePicker::make('started_at')
                            ->label('Dari Tanggal')
                            ->placeholder('Pilih Tanggal')
                            ->native(false)
                            ->required(),

                        DatePicker::make('ended_at')
                            ->label('Sampai Tanggal')
                            ->placeholder('Pilih Tanggal')
                            ->native(false)
                            ->minDate(fn (callable $get) => $get('started_at'))
                            ->required(),
                    ])
                    ->columns(3),
            ])
            ->statePath('data');
    }

    protected function getFormActions(): array
    {
        return [
            $this->getDownloadReportAction(),
        ];
    }

    public function getDownloadReportAction()
    {
        return Action::make('download_report')
            ->label('Unduh Laporan')
            ->submit('download_report');
    }

    public function download_report(): void
    {
        $data = $this->form->getState();

        redirect()->route('report.expectant-mother-report', [
            'started_at'    => $data['started_at'],
            'ended_at'      => $data['ended_at'],
            'posyandu_id'   => auth()->user()->officer->posyandu_id,
        ]);
    }
}
