@extends('layouts._dashboard.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <br>
                @foreach ($literasi as $p)
                    <div class="card" style="background-color: #E8F4FF">
                        <div class="row justify-content-center">
                            <div class="col-md-3">
                                <img src="/storage/thumbnail/{{ $p->image }}" class="card-img-top" alt="...">
                            </div>

                            <div class="card-body col-md-8">
                                <h4 class="card-title">{{ $p->judul }}</h4>
                                <h6 class="card-category">{{ $p->kategori }}</h6>
                                <p style="text-align:justify" class="card-text">{{ $p->isi }}
                                </p>

                                <div class="row">
                                    <div class="col-md-8">
                                        <p>Oleh: {{ $p->name }}, {{ $p->waktu_post }}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                @endforeach
            </div>
        </div>
    </div>
@endsection
