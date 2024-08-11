<?php

namespace App\Http\Controllers;

use App\Models\ExpectantMother;
use App\Models\Posyandu;
use App\Models\PosyanduActivity;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ReportController extends Controller
{
    public function posyanduActivityReport(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'started_at'    => 'required|date',
                'ended_at'      => 'required|date',
                'posyandu_id'   => 'exists:posyandus,id'
            ]
        );

        if ($validator->fails()) {
            return redirect()->route('login');
        }

        $startedAt  = Carbon::parse($request->started_at)->translatedFormat('j F Y');
        $endedAt    = Carbon::parse($request->endedAt)->translatedFormat('j F Y');

        $posyanduActivities = new PosyanduActivity();

        if ($request->posyandu_id) {
            $posyanduActivities = $posyanduActivities->where('posyandu_id', $request->posyandu_id);
            $posyandu           = Posyandu::find($request->posyandu_id);
        }

        $posyanduActivities = $posyanduActivities
            ->whereRaw('DATE(created_at) >= "' . $request->started_at . '"')
            ->whereRaw('DATE(created_at) <= "' . $request->ended_at . '"')
            ->get();

        $dompdf = Pdf::loadView('dompdf.expectant-mother-report', [
            'posyanduActivities'    => $posyanduActivities,
            'posyandu'              => $posyandu ?? null,
            'startedAt'             => $startedAt,
            'endedAt'               => $endedAt,
        ])
            ->setPaper('A4', 'landscape');

        return $dompdf->stream('Laporan Pemeriksaan Rentang ' . $startedAt  . ' - ' . $endedAt . '.pdf');
    }

    public function expectantMotherReport(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'started_at'    => 'required|date',
                'ended_at'      => 'required|date',
                'posyandu_id'   => 'exists:posyandus,id'
            ]
        );

        if ($validator->fails()) {
            return redirect()->route('login');
        }

        $startedAt  = Carbon::parse($request->started_at)->translatedFormat('j F Y');
        $endedAt    = Carbon::parse($request->endedAt)->translatedFormat('j F Y');

        $expectantMothers = new ExpectantMother();

        if ($request->posyandu_id) {
            $expectantMothers   = $expectantMothers->where('posyandu_id', $request->posyandu_id);
            $posyandu           = Posyandu::find($request->posyandu_id);
        }

        $expectantMothers = $expectantMothers
            ->whereRaw('DATE(created_at) >= "' . $request->started_at . '"')
            ->whereRaw('DATE(created_at) <= "' . $request->ended_at . '"')
            ->get();

        $dompdf = Pdf::loadView('dompdf.expectant-mother-report', [
            'expectantMothers'      => $expectantMothers,
            'posyandu'              => $posyandu ?? null,
            'startedAt'             => $startedAt,
            'endedAt'               => $endedAt,
        ])
            ->setPaper('A4', 'landscape');

        return $dompdf->stream('Laporan Ibu Hamil Rentang ' . $startedAt  . ' - ' . $endedAt . '.pdf');
    }

    public function posyanduReport(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'started_at'    => 'required|date',
                'ended_at'      => 'required|date',
                'posyandu_id'   => 'exists:posyandus,id'
            ]
        );

        if ($validator->fails()) {
            return redirect()->route('login');
        }

        $startedAt  = Carbon::parse($request->started_at)->translatedFormat('j F Y');
        $endedAt    = Carbon::parse($request->endedAt)->translatedFormat('j F Y');

        $posyandus = Posyandu::withCount([
            'officers',
            'expectant_mothers',
            'nurses',
            'expectant_mothers as age_under_count' => function ($query) {
                $query->where('age', '<', 18);
            },
            'expectant_mothers as age_mid_count' => function ($query) {
                $query->where('age', '>=', 18)->where('age', '<=', 30);
            },
            'expectant_mothers as age_above_count' =>  function ($query) {
                $query->where('age', '>', 30);
            },
            'posyandu_activities as pregnancy_week_low_count' => function ($query) {
                $query->where('pregnancy_week', '<', 14);
            },
            'posyandu_activities as pregnancy_week_mid_count' => function ($query) {
                $query->where('pregnancy_week', '>=', 14)->where('pregnancy_week', '<=', 27);
            },
            'posyandu_activities as pregnancy_week_above_count' =>  function ($query) {
                $query->where('pregnancy_week', '>', 27);
            },
            'posyandu_activities as low_risk_count' => function ($query) {
                $query->where('risk_level', 'low');
            },
            'posyandu_activities as mid_risk_count' => function ($query) {
                $query->where('risk_level', 'mid');
            },
            'posyandu_activities as high_risk_count' =>  function ($query) {
                $query->where('risk_level', 'high');
            },
        ]);

        if ($request->posyandu_id) {
            $posyandus   = $posyandus->where('posyandu_id', $request->posyandu_id);
        }

        $posyandus = $posyandus
            ->whereRaw('DATE(created_at) >= "' . $request->started_at . '"')
            ->whereRaw('DATE(created_at) <= "' . $request->ended_at . '"')
            ->get();

        $dompdf = Pdf::loadView('dompdf.posyandu-report', [
            'posyandus' => $posyandus,
            'startedAt' => $startedAt,
            'endedAt'   => $endedAt,
        ])
            ->setPaper('A4', 'landscape');

        return $dompdf->stream('Laporan Data Posyandu ' . $startedAt  . ' - ' . $endedAt . '.pdf');
    }
}
