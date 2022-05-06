<link rel="shortcut icon" href="/assets/images/icon.svg" type="image/x-icon">
<title>Dashboard Admin || LiterasiKUY</title>
@extends('layouts._dashboard.app')

@section('content')
    <h1 class="mt-1">Data Postingan</h1>
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="col-md-2">
            </div>
            <div class="col-md-6 mb-4">
                <form action=" {{ route('admin.cari') }}" method="GET">
                    <div class="input-group">
                        <input type="text" name="cari" id="form1" placeholder="Masukkan kata kunci .." class="form-control"
                            value="{{ old('cari') }}">
                        <input class="btn btn-primary ml-2" type="submit" value="CARI">
                    </div>
                </form>
            </div>
        </div>
        <br><br>

        @foreach ($literasi as $p)
            <div class="shadow p-3 mb-4 bg-white rounded">
                <div class="card border-0">
                    <div class="row justify-content-start">
                        <div class="col-md-3 align-self-center">
                            <div class="rounded float-left">
                                <img src="/img/uploads/{{ $p->image }}" class="card-img-top img-sm-thumbnail border-0"
                                    alt="...">
                            </div>
                        </div>

                        <div class="col-md-9 align-self-center">
                            <h4 class="card-title">{{ $p->judul }}</h4>
                            <h6 class="card-category">{{ $p->kategori }}</h6>
                            <p style="text-align:justify" class="card-text">{!! Str::limit($p->isi, 100) !!}
                            </p>

                            <div class="row">
                                <div class="col-md-9">
                                    <p>Oleh: {{ $p->name }}, {{ $p->waktu_post }}</p>
                                </div>
                                <div class="col ms-auto">
                                    <a href="postingan/{{ $p->slug }}">Baca Selengkapnya >>></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>

                    <div class="d-flex justify-content-end">
                        <a class="btn btn-secondary mx-2" href="postingan/edit-postingan/{{ $p->id_literasi }}">Edit</a>
                        <a class="btn btn-danger" href="postingan/hapus-postingan/{{ $p->id_literasi }}">Hapus</a>
                    </div>

                </div>
            </div>
            {{-- <div class="card">
                <div class="row justify-content-center" style="background-color: #E8F4FF">
                    <div class="col-md-3">
                        <img src="/storage/thumbnail/{{ $p->image }}" class="card-img-top" alt="...">
                    </div>

                    <div class="card-body col-md-8">
                        <h4 class="card-title">{{ $p->judul }}</h4>
                        <h6 class="card-category">{{ $p->kategori }}</h6>
                        <p style="text-align:justify" class="card-text">{{ Str::limit($p->isi, 300) }}
                        </p>

                        <div class="row">
                            <div class="col-md-8">
                                <p>Oleh: {{ $p->name }}, {{ $p->waktu_post }}</p>
                            </div>
                            <div class="col ms-auto">
                                <a href="postingan/{{ $p->id_literasi }}">Baca Selengkapnya</a>
                            </div>

                        </div>

                        <div class="col ms-auto">
                            <a class="btn btn-secondary" href="postingan/edit-postingan/{{ $p->id_literasi }}">Edit</a>
                        </div>
                        <div class="col ms-auto">
                            <a class="btn btn-danger" href="postingan/hapus-postingan/{{ $p->id_literasi }}">Hapus</a>
                        </div>

                    </div>

                </div>

                <br>
            </div>

            <br> --}}
        @endforeach
    </div>
    {{ $literasi->links() }}
    </div>
@endsection
