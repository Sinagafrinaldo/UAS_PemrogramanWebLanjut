<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

@extends('layouts.app')

@section('content')
    <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="{{ url('/') }}">
                {{-- {{ config('app.name', 'Laravel') }} SDFSDF --}}
                LiterasiKuy
            </a>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <!-- Left Side Of Navbar -->
                <ul class="navbar-nav me-auto">
                    <a href="/kategori">Kategori</a>
                </ul>
                <ul class="navbar-nav me-auto">
                    <a href="/bantuan">Bantuan</a>
                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="navbar-nav ms-auto">
                    <!-- Authentication Links -->
                    @guest
                        @if (Route::has('login'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                        @endif

                        @if (Route::has('register'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                            </li>
                        @endif
                    @else
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }}
                            </a>

                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                    onclick="event.preventDefault();
                                                                                                                                                                                                                                                                             document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </div>
                        </li>
                    @endguest
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                @guest
                @else
                    <div class="col-md-4">
                        <a class="btn btn-warning" href="/tambah" role="button"> + Posting Karya</a>
                    </div>
                @endguest
                <div class="row justify-content-center">

                    <div class="col-md-2">
                    </div>
                    <div class="col-md-6">
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
                    <div class="card" style="background-color: #E8F4FF">
                        <div class="row justify-content-center">
                            <div class="col-md-3">
                                <img src="storage/thumbnail/{{ $p->image }}" class="card-img-top" alt="...">
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
                                        <a href="/postingan/{{ $p->id_literasi }}">Baca Selengkapnya</a>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                @endforeach
            </div>
            {{ $literasi->links() }}
        </div>
    </div>
@endsection
