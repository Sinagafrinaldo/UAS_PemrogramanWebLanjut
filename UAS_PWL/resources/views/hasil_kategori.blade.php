<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="shortcut icon" href="/assets/images/icon.svg" type="image/x-icon">
<title>Hasil Kategori || LiterasiKUY</title>
@extends('layouts.app')

@section('content')
    <nav class="navbar navbar-expand-sm navbar-light navbar-literasi bg-white shadow-sm">
        <a class="navbar-brand" href="{{ url('/') }}">
            {{-- {{ config('app.name', 'Laravel') }} SDFSDF --}}
            <img src="/assets/images/logo.svg" width="185px" height="40px">
        </a>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Left Side Of Navbar -->
            <ul class="navbar-nav nav-menu ml-auto">
                <li class="menu-list">
                    <a class="menu-link" href="/kategori">Kategori</a>
                </li>
                <li class="menu-list">
                    <a class="menu-link" href="/bantuan">Bantuan</a>
                </li>
                <!-- Right Side Of Navbar -->
                <!-- Authentication Links -->
                @guest
                    @if (Route::has('login'))
                        <li class="nav-item menu-list">
                            <a class="btn-lgn" href="{{ route('login') }}">{{ __('Sign In') }}</a>
                        </li>
                    @endif

                    @if (Route::has('register'))
                        <li class="nav-item menu-list">
                            <a class="btn-rgt" href="{{ route('register') }}">{{ __('Sign Up') }}</a>
                        </li>
                    @endif
                @else
                    <li class="nav-item dropdown menu-list">
                        <a id="navbarDropdown" class="dropdown-toggle btn-lgn" href="#" role="button" data-bs-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false" v-pre>
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
    </nav>

    <div class="container" style=" min-height: 70%">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="row action-page" style="margin-top: -20;">
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
                    <div class="shadow p-3 mb-5 bg-white rounded" style="margin-top: -12">
                        <div class="card border-0">
                            <div class="row justify-content-start">
                                <div class="col-md-3 align-self-center">
                                    <div class="rounded float-left">
                                        <img src="/uploads/{{ $p->image }}"
                                            class="card-img-top img-sm-thumbnail border-0" alt="...">
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
                                            <a href="/postingan/{{ $p->slug }}">Baca Selengkapnya >>></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <div class="pagin">
                {{ $literasi->links() }}
            </div>

        </div>
    </div>
@endsection
