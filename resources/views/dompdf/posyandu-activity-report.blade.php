<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan Pemeriksaan Ibu Hamil {{ $startedAt }} - {{ $endedAt }}</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,wght@0,100..900;1,100..900&display=swap"
        rel="stylesheet">

    <style>
        * {
            font-family: 'Inter', 'Arial', 'Calibri', sans-serif;
            margin: 0;
            padding: 0;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            font-weight: 500;
        }

        h1 {
            font-size: 1.5em;
        }

        h2 {
            font-size: 1.25em;
        }

        h3 {
            font-size: 1em;
        }

        h4 {
            font-size: .75em;
        }

        h5 {
            font-size: .5em;
        }

        h6 {
            font-size: .25em;
        }

        body {
            padding: 2em;
            font-size: .75em;
        }

        table#table {
            border: 1px solid #7fbacc;
            border-collapse: collapse;
            width: 100%;
            margin-top: 2em;
        }

        table#table thead {
            background: #008CB5;
        }

        table#table tbody {
            border: 1px solid #7fbacc;
        }

        table#table th,
        table#table td {
            font-weight: normal;
            border: 1px solid #7fbacc;
            padding: .5em;
            text-align: left;
        }

        table#table th {
            border: 1px solid #fff;
            color: #fff;
        }
    </style>
</head>

<body>

    <div>
        <div id="heading">
            <table style="width: 100%;">
                <tr>
                    <td style="text-align: right; width: 25%;">
                        <img src="{{ public_path('images/logo-sipd-posyandu.png') }}" alt="Logo SIPD"
                            style="width: auto; height: 50px;">
                    </td>
                    <td style="text-align: center; width: 50%;">
                        <h1>
                            Laporan Riwayat Pemeriksaan Ibu Hamil
                        </h1>

                        @if ($posyandu)
                        <h2>Posyandu {{ $posyandu->name }}</h2>
                        @endif

                        <h2>Rentang Tanggal {{ $startedAt }} - {{ $endedAt }}
                        </h2>
                    </td>
                    <td style="text-align: right; width: 25%;">
                        <img src="{{ public_path('images/logo-kemenkes.png') }}" alt="Logo Kemenkes"
                            style="width: auto; height: 50px; object-fit: cover;">
                    </td>
                </tr>
            </table>
        </div>

        <table id="table">
            <thead>
                <tr>
                    <th>Tanggal Pencatatan</th>
                    <th>Nama Ibu Hamil</th>
                    <th>Nama Suami</th>
                    <th>Umur Ibu Hamil</th>
                    <th>Umur Suami</th>
                    <th>Kehamilan Ke</th>
                    <th>Usia Kehamilan (Minggu)</th>
                    <th>Status Vaksinasi</th>
                    <th>Tinggi Badan</th>
                    <th>Berat Badan</th>
                    <th>Tekanan Darah (mm Hg)</th>
                    <th>Kadar Gula Darah (mmol/L)</th>
                    <th>Suhu Tubuh (° C) </th>
                    <th>Denyut Nadi (bpm) </th>
                    <th>Tingkat Risiko Kehamilan</th>
                </tr>
            </thead>
            @if (!empty($posyanduActivities))
            <tbody>
                @foreach ($posyanduActivities as $posyanduActivity)
                <tr>
                    <td>{{ Carbon\Carbon::parse($posyanduActivity->created_at)->translatedFormat('d/m/Y H:i') }}</td>
                    <td>{{ $posyanduActivity->expectant_mother->name }}</td>
                    <td>{{ $posyanduActivity->expectant_mother->spouse_name }}</td>
                    <td>{{ $posyanduActivity->expectant_mother->age }}</td>
                    <td>{{ $posyanduActivity->expectant_mother->spouse_age }}</td>
                    <td>{{ $posyanduActivity->expectant_mother->no_of_pregnancy }}</td>
                    <td>{{ $posyanduActivity->pregnancy_week }}</td>
                    <td>{{ $posyanduActivity->has_vaccinated === 1 ? 'Sudah' : 'Belum' }}</td>
                    <td>{{ number_format($posyanduActivity->height, 0, ',', '.') }}</td>
                    <td>{{ number_format($posyanduActivity->weight, 0, ',', '.') }}</td>
                    <td>{{ $posyanduActivity->blood_pressure_level }}</td>
                    <td>{{ number_format($posyanduActivity->blood_sugar_level, 2, ',', '.')}}</td>
                    <td>{{ number_format($posyanduActivity->body_temperature, 2, ',', '.')}}</td>
                    <td>{{ number_format($posyanduActivity->heart_rate, 0, ',', '.')}}</td>
                    <td>{{
                        match($posyanduActivity->risk_level) {
                        'low' => 'Rendah',
                        'mid' => 'Sedang',
                        'high' => 'Tinggi',
                        }
                        }}
                    </td>
                </tr>
                @endforeach
            </tbody>
            @else
            <tbody>
                <tr>
                    <td colspan="18"><i>Tidak ada data yang ditemukan</i></td>
                </tr>
            </tbody>
            @endif
        </table>
    </div>
</body>

</html>