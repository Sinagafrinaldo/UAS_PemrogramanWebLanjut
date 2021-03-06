<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="shortcut icon" href="/assets/images/icon.svg" type="image/x-icon">
<title>Kategori || LiterasiKUY</title>
@extends('layouts.app')

@section('content')
    <nav class="navbar navbar-expand-sm navbar-light navbar-literasi bg-white shadow-sm">
        <a class="navbar-brand" href="{{ url('/') }}">
            {{-- {{ config('app.name', 'Laravel') }} SDFSDF --}}
            <img src="assets/images/logo.svg" width="185px" height="40px">
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


    <div class="container" style="margin-top: -20;margin-bottom: -25">
        <div class="shadow p-4 mb-5 bg-white rounded">
            <div class="text-center" style="color: #1F76C6;">
                <h1 style="padding: 10px"><strong>Kategori</strong>
                    <hr width="50%" margin="auto">
                </h1>
            </div>
            
            <div class="container">
                <div class="row justify-content-center mb-3">
                    <div class="list-kategori btn btn-primary col-lg-3 py-4 "
                        style="margin-bottom: 20px; background-color: #33beb7; border: none">
                        <a href="/kategori/puisi" class="text-white"><img class="img-kategori" src="assets/icon/puisi.png"
                                width="35px"><br>Puisi</a>
                    </div>
                    <div class="col-sm-1"></div>
                    <div class="list-kategori btn btn-primary col-lg-3 py-4"
                        style="margin-bottom: 20px; background-color:#f66320; border: none">
                        <a href="/kategori/cerpen" class="text-white"><img class="img-kategori"
                                src="assets/icon/cerpen.png" width="35px"><br>Cerita Pendek</a>
                    </div>
                    <div class="col-sm-1"></div>
                    <div class="list-kategori btn btn-primary col-lg-3 py-4"
                        style="margin-bottom: 20px; background-color: #b2c224; border: none">
                        <a href="/kategori/cerita_rakyat" class="text-white"><img class="img-kategori"
                                src="assets/icon/rakyat.png" width="35px"><br>Cerita Rakyat</a>
                    </div>
                </div>

                <div class="row justify-content-center mb-3">
                    <div class="list-kategori btn btn-primary col-lg-3 py-4"
                        style="margin-bottom: 20px; background-color:#b2c224; border: none">
                        <a href="/kategori/dongeng" class="text-white"><img class="img-kategori"
                                src="assets/icon/dongeng.png" width="35px"><br>Dongeng</a>
                    </div>
                    <div class="col-sm-1"></div>
                    <div class="list-kategori btn btn-primary col-lg-3 py-4"
                        style="margin-bottom: 20px; background-color:#f8a227; border: none">
                        <a href="/kategori/kesehatan" class="text-white"><img class="img-kategori"
                                src="assets/icon/kesehatan.png" width="35px"><br>Kesehatan</a>
                    </div>
                    <div class="col-sm-1"></div>
                    <div class="list-kategori btn btn-primary col-lg-3 py-4"
                        style="margin-bottom: 20px;background-color:#a364d9; border: none">
                        <a href="/kategori/sport" class="text-white"><img class="img-kategori"
                                src="assets/icon/olahraga.png" width="35px"><br>Sport</a>
                    </div>
                </div>
                
                <div class="row justify-content-center">
                    <div class="list-kategori btn btn-primary col-lg-3 py-4"
                        style="margin-bottom: 20px;background-color:#db3937;  border: none">
                        <a href="/kategori/review_buku" class="text-white"><img class="img-kategori"
                                src="assets/icon/review.png" width="35px"><br>Review Buku</a>
                    </div>
                    <div class="col-sm-1"></div>
                    <div class="list-kategori btn btn-primary col-lg-3 py-4"
                        style="margin-bottom: 20px;background-color:#ee6579; border: none">
                        <a href="/kategori/fantasi" class="text-white"><img class="img-kategori"
                                src="assets/icon/fantasi.png" width="35px"><br>Fantasi</a>
                    </div>
                    <div class="col-sm-1"></div>
                    <div class="list-kategori btn btn-primary col-lg-3 py-4"
                        style="margin-bottom: 20px;background-color:#2992c2; border: none">
                        <a href="/kategori/fashion" class="text-white"><img class="img-kategori"
                                src="assets/icon/fashion.png" width="35px"><br>Fashion</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
