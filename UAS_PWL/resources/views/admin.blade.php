<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Page</title>
</head>

<body>
    <div class="container">
        <div class="content">
            @foreach ($literasi as $p)
                <h3>Judul: {{ $p->judul }}</h3>
                <p>Isi: {{ $p->isi }}</p>
                <b>Kategori: {{ $p->kategori }}</b>
                <br>
                <p>Oleh: {{ $p->name }}</p>
                <p>Diterbitkan: {{ $p->waktu_post }}</p>
                <br>
                <a href="/edit/{{ $p->id_literasi }}">Edit</a>
                |
                <a href="/hapus/{{ $p->id_literasi }}">Hapus</a>
                <hr>
            @endforeach
        </div>
    </div>
</body>

</html>
