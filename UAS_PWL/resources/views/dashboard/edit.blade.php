@extends('layouts._dashboard.app')

@section('content')
    <div class="container">

        <div class="card mb-4 mt-4">
            <div class="mx-auto" style="width: 90%">
                @foreach ($literasi as $p)
                    <form action="{{ route('admin.update') }}" method="post">
                        {{ csrf_field() }}
                        <div class="mb-3 mt-3">
                            <label for="exampleInputEmail1" class="form-label"><strong>Judul</strong></label>
                            <input type="text" name="judul" required="required" value="{{ $p->judul }}"
                                class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label"><strong>Kategori</strong></label>
                            <br>

                            <select name="kategori" class="form-select" value="{{ $p->kategori }}"
                                aria-label="Default select example">
                                <option disabled>Pilih Kategori</option>
                                <option value="Puisi" name="Puisi">Puisi</option>
                                <option value="Cerita Pendek" name="Cerita Pendek">Cerita Pendek</option>
                                <option value="Cerita Rakyat" name="Cerita Rakyat">Cerita Rakyat</option>
                                <option value="Dongeng" name="Dongeng">Dongeng</option>
                                <option value="Kesehatan" name="Kesehatan">Kesehatan</option>
                                <option value="Sport" name="Sport">Sport</option>
                                <option value="Review Buku" name="Review Buku">Review Buku</option>
                                <option value="Fantasi" name="Fantasi">Fantasi</option>
                                <option value="Fashion" name="Fashion">Fashion</option>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label"><strong>Isi</strong></label>
                            <div class="form-floating">
                                <textarea name="isi" class="form-control" placeholder="Leave a comment here" id="floatingTextarea2"
                                    style="height: 250px">
                                    {{ $p->isi }}
                                </textarea>
                            </div>
                        </div>

                        <input type="text" name="id_literasi" hidden value="{{ $p->id_literasi }}">
                        <button type="submit" value="Simpan Data" class="btn btn-primary">Submit</button>
                        <p></p>
                    </form>
                @endforeach
            </div>
        </div>
        <script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
        <script>
            ClassicEditor
                .create(document.querySelector('#floatingTextarea2'))
                .then(editor => {
                    console.log(editor);
                })
                .catch(error => {
                    console.error(error);
                });
        </script>
        {{-- <div class="card-body">
                @foreach ($literasi as $p)
                    <form action="{{ route('admin.update') }}" method="post">
                        {{ csrf_field() }}
                        Judul <input type="text" name="judul" required="required" value="{{ $p->judul }}"> <br />
                        Isi
                        <textarea type="text" name="isi" required="required"> {{ $p->isi }} </textarea> <br />
                        Kategori
                        <select name="kategori" class="input-judul" value="{{ $p->kategori }}">
                            <option disabled selected>--Pilih Kategori--</option>
                            <option value="Puisi" name="Puisi">Puisi</option>
                            <option value="Cerita Pendek" name="Cerita Pendek">Cerita Pendek</option>
                            <option value="Cerita Rakyat" name="Cerita Rakyat">Cerita Rakyat</option>
                            <option value="Dongeng" name="Dongeng">Dongeng</option>
                            <option value="Kesehatan" name="Kesehatan">Kesehatan</option>
                            <option value="Sport" name="Sport">Sport</option>
                            <option value="Review Buku" name="Review Buku">Review Buku</option>
                            <option value="Fantasi" name="Fantasi">Fantasi</option>
                            <option value="Fashion" name="Fashion">Fashion</option>

                        <input type="text" name="id_literasi" hidden value="{{ $p->id_literasi }}">


                        <input type="submit" value="Simpan Data">
                    </form>
                @endforeach
            </div> --}}

    </div>
@endsection
