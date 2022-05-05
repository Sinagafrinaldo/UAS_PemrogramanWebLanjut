<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

@extends('layouts.app')

@section('content')
    <div class="container-fluid">
        <nav class="navbar navbar-expand-sm navbar-light navbar-literasi bg-white shadow-sm">
            <a class="navbar-brand" href="{{ url('/') }}">
                {{-- {{ config('app.name', 'Laravel') }} SDFSDF --}}
                <img src="/assets/images/logo.svg" width="185px" height="50px">
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent">
                <span class="navbar-toggler-icon"></span>
            </button>

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
                            <a id="navbarDropdown" class="dropdown-toggle btn-lgn" href="#" role="button"
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
        </nav>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="row action-page">
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
                    <div class="card" style="background-color: #E8F4FF">
                        <div class="text-center">
                            <h4 class="card-title sub-head">{{ $p->judul }}</h4>
                            <hr width="30%" margin="auto" color="#1F76C6" style="opacity: 20%;">
                        </div>
                        <div class="post-thumbnail">
                            <img src="/img/uploads/{{ $p->image }}" width="100%" style="border-radius: 10px;"
                                alt="...">
                            <div class="info">
                                <p>Karya: {{ $p->name }} | Diposting: {{ $p->waktu_post }} | Kategori:
                                    {{ $p->kategori }}</p>
                            </div>

                        </div>
                        <div class="row justify-content-center">
                            <div class="card-body col-md-8">
                                <p style="text-align:justify" class="card-text">{!! $p->isi !!}</p>
                            </div>
                        </div>
                    </div>
                    <br>
                @endforeach

                {{-- Halaman : {{ $literasi->currentPage() }} <br />
                        Jumlah Data : {{ $literasi->total() }} <br />
                        Data Per Halaman : {{ $literasi->perPage() }} <br /> --}}

            </div>
            {{-- {{ $literasi->links() }} --}}
        </div>
    </div>
@endsection
