<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan Ibu Hamil {{ $startedAt }} - {{ $endedAt }}</title>

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
                            Laporan Data Ibu Hamil
                        </h1>

                        @if ($posyandu)
                        <h2>Posyandu: {{ $posyandu->name }}</h2>
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
                    <th>Nomor Registrasi</th>
                    <th>Nama Lengkap</th>
                    <th>Nama Lengkap Suami</th>
                    <th>Umur</th>
                    <th>Umur Suami</th>
                    <th>Kehamilan Ke</th>
                    <th>Pendidikan</th>
                    <th>Pendidikan Suami</th>
                    <th>Pekerjaan</th>
                    <th>Pekerjaan Suami</th>
                    <th>Hari Pertama Haid Terakhir (HPHT)</th>
                    <th>Prakiraan Bersalin</th>
                </tr>
            </thead>
            @if (!empty($expectantMothers))
            <tbody>
                @foreach ($expectantMothers as $expectantMother)
                <tr>
                    <td>{{ $expectantMother->registration_number }}</td>
                    <td>{{ $expectantMother->name }}</td>
                    <td>{{ $expectantMother->spouse_name }}</td>
                    <td>{{ $expectantMother->age }}</td>
                    <td>{{ $expectantMother->spouse_age }}</td>
                    <td>{{ $expectantMother->no_of_pregnancy }}</td>
                    <td>{{ $expectantMother->education_level }}</td>
                    <td>{{ $expectantMother->spouse_education_level }}</td>
                    <td>{{ $expectantMother->occupation }}</td>
                    <td>{{ $expectantMother->spouse_occupation }}</td>
                    <td>{{ \Carbon\Carbon::parse($expectantMother->hpht)->translatedFormat('j F Y') }}</td>
                    <td>{{ \Carbon\Carbon::parse($expectantMother->tp)->translatedFormat('j F Y') }}</td>
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