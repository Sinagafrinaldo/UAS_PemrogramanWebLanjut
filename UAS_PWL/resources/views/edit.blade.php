<!DOCTYPE html>
<html>

<head>
    <title>Tambah Data</title>
</head>

<body>

    <h3>Edit Literasi</h3>


    <br />
    <br />

    <div class="card-body">
        @foreach ($literasi as $p)
            <form action="/update" method="post">
                {{ csrf_field() }}
                Judul <input type="text" name="judul" required="required" value="{{ $p->judul }}"> <br />
                Isi
                <textarea type="text" name="isi" required="required"> {{ $p->isi }} </textarea> <br />
                Kategori
                <select name="kategori" value="{{ $p->kategori }}">
                    <option value="Dongeng" name="Dongeng" selected>Dongeng</option>
                    <option value="Puisi" name="Puisi">Puisi</option>
                    <option value="Legenda" name="Legenda">Legenda</option>

                </select>
                <input type="text" name="id_literasi" hidden value="{{ $p->id_literasi }}">


                <input type="submit" value="Simpan Data">
            </form>
        @endforeach
    </div>


</body>

</html>
