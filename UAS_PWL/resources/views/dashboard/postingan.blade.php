@extends('layouts._dashboard.app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="row action-page" style="margin-top: -20">
                    @guest
                    @else
                        <div class="col-12 col-md-4">
                            <a class="btn btn-warning btn-post" href="/tambah" role="button"> + Posting Karya</a>
                        </div>
                    @endguest

                    <div class="col-12 col-md-6 ml-auto">
                        <form action="/cari2" method="GET">
                            <div class="input-group">
                                <input type="text" name="cari" id="form1" placeholder="Masukkan kata kunci .."
                                    class="form-control" value="{{ old('cari') }}">
                                <input class="btn btn-primary ml-2" type="submit" value="CARI">
                            </div>
                        </form>
                    </div>

                </div>

                @foreach ($literasi as $p)
                    <div class="shadow p-4 mb-5 bg-white rounded" style="margin-top: -11;">
                        <div class="text-center" style="margin-top:20;">
                            <h3 class="card-title sub-head" style="color: #1F76C6">{{ $p->judul }}</h3>
                            <hr width="50%" margin="auto" color="#1F76C6" style="opacity: 20%;">
                        </div>
                        <div class="post-thumbnail">
                            <div>
                                <img src="/img/uploads/{{ $p->image }}" class="img-fluid mx-auto d-block" alt="...">
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="card-body text-justify">
                                <p>{!! $p->isi !!}</p>
                            </div>
                        </div>

                        <div class="info " style="font-size: 14">
                            <p>Karya: {{ $p->name }} | Diposting: {{ $p->waktu_post }} | Kategori:
                                {{ $p->kategori }}</p>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection
