<link rel="shortcut icon" href="/assets/images/icon.svg" type="image/x-icon">
<title>Detail Postingan || LiterasiKUY</title>
@extends('layouts._dashboard.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">


                @foreach ($literasi as $p)
                    <div class="shadow p-4 mb-5 bg-white rounded" style="margin-top: -11;">
                        <div class="text-center" style="margin-top:20;">
                            <h3 class="card-title sub-head" style="color: #1F76C6">{{ $p->judul }}</h3>
                            <hr width="50%" margin="auto" color="#1F76C6" style="opacity: 20%;">
                        </div>
                        <div class="post-thumbnail">
                            <div>
                                <img src="/uploads/{{ $p->image }}" class="img-fluid mx-auto d-block" alt="...">
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
