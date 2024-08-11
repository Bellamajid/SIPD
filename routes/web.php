<?php

use App\Filament\Pages\Auth\Login;
use App\Http\Controllers\ReportController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return redirect()->route('login');
});

Route::get('/login', Login::class)->name('login');

Route::group(['prefix' => 'report', 'as' => 'report.'], function () {
    Route::get('posyandu-activity', [ReportController::class, 'posyanduActivityReport'])->name('posyandu-activity-report');
    Route::get('expectant-mother',  [ReportController::class, 'expectantMotherReport'])->name('expectant-mother-report');
    Route::get('posyandu',          [ReportController::class, 'posyanduReport'])->name('posyandu-report');
});
