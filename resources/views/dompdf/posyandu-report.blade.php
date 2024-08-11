<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan Data Posyandu {{ $startedAt }} - {{ $endedAt }}</title>

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
                            Laporan Data Posyandu
                        </h1>

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
                    <th rowspan="2">Nama Posyandu</th>
                    <th rowspan="2">Jumlah Kader</th>
                    <th rowspan="2">Jumlah Bidan</th>
                    <th rowspan="2">Jumlah Ibu Hamil</th>
                    <th colspan="3">Tingkat Risiko Kehamilan</th>
                    <th colspan="3">Umur Ibu Hamil</th>
                    <th colspan="3">Usia Kehamilan (Minggu)</th>
                </tr>
                <tr>
                    <th>Rendah</th>
                    <th>Menengah</th>
                    <th>Tinggi</th>
                    <th>
                        < 18</th>
                    <th>18 - 30</th>
                    <th>30 ></th>
                    <th>1 - 13</th>
                    <th>14 - 26</th>
                    <th>27 - 40</th>
                </tr>
            </thead>
            @if (!empty($posyandus))
            <tbody>
                @foreach ($posyandus as $posyandu)
                <tr>
                    <td>{{ $posyandu->name }}</td>
                    <td style="text-align: center;">{{ $posyandu->officers_count }}</td>
                    <td style="text-align: center;">{{ $posyandu->nurses_count }}</td>
                    <td style="text-align: center;">{{ $posyandu->expectant_mothers_count }}</td>
                    <td style="text-align: center;">{{ $posyandu->low_risk_count }}</td>
                    <td style="text-align: center;">{{ $posyandu->mid_risk_count }}</td>
                    <td style="text-align: center;">{{ $posyandu->high_risk_count }}</td>
                    <td style="text-align: center;">{{ $posyandu->age_under_count }}</td>
                    <td style="text-align: center;">{{ $posyandu->age_mid_count }}</td>
                    <td style="text-align: center;">{{ $posyandu->age_above_count }}</td>
                    <td style="text-align: center;">{{ $posyandu->pregnancy_week_low_count }}</td>
                    <td style="text-align: center;">{{ $posyandu->pregnancy_week_mid_count }}</td>
                    <td style="text-align: center;">{{ $posyandu->pregnancy_week_above_count }}</td>
                </tr>
                @endforeach
            </tbody>
            @else
            <tbody>
                <tr>
                    <td colspan="4"><i>Tidak ada data yang ditemukan</i></td>
                </tr>
            </tbody>
            @endif
        </table>
    </div>
</body>

</html>