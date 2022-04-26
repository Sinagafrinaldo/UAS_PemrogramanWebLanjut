<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

@extends('layouts.app')

@section('content')
    <div class="container-fluid">
        <nav class="navbar navbar-expand-sm navbar-light navbar-literasi bg-white shadow-sm">
            <a class="navbar-brand" href="{{ url('/') }}">
                {{-- {{ config('app.name', 'Laravel') }} SDFSDF --}}
                <img src="assets/images/logo.svg" width="185px" height="50px">
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
    <div class="text-center" style="background-color: #E8F4FF; color: #1F76C6; margin-top: -40px;">
        <h1 style="padding: 30px">Kategori
            <hr width="40%" margin="auto">
        </h1>

    </div>
    <div class="container">
        <div class="row justify-content-center" style="margin-bottom: 50px;">

            <div class="content-kategori row">
                <div class="list-kategori btn btn-primary col-lg-3 py-4 " style="margin-bottom: 20px">
                    <a href="/kategori/puisi" class="text-white"><img class="img-kategori" src="assets/icon/puisi.png"
                            width="35px">Puisi</a>
                </div>
                <div class="col-sm-1"></div>
                <div class="list-kategori btn btn-primary col-lg-3 py-4" style="margin-bottom: 20px">
                    <a href="/kategori/cerpen" class="text-white"><img class="img-kategori"
                            src="assets/icon/cerpen.png" width="35px">Cerita Pendek</a>
                </div>
                <div class="col-sm-1"></div>
                <div class="list-kategori btn btn-primary col-lg-3 py-4" style="margin-bottom: 20px">
                    <a href="/kategori/cerita_rakyat" class="text-white"><img class="img-kategori"
                            src="assets/icon/rakyat.png" width="35px">Cerita Rakyat</a>
                </div>

                <div class="list-kategori btn btn-primary col-lg-3 py-4" style="margin-bottom: 20px">
                    <a href="/kategori/dongeng" class="text-white"><img class="img-kategori"
                            src="assets/icon/dongeng.png" width="35px">Dongeng</a>
                </div>
                <div class="col-sm-1"></div>
                <div class="list-kategori btn btn-primary col-lg-3 py-4" style="margin-bottom: 20px">
                    <a href="/kategori/kesehatan" class="text-white"><img class="img-kategori"
                            src="assets/icon/kesehatan.png" width="35px">Kesehatan</a>
                </div>
                <div class="col-sm-1"></div>
                <div class="list-kategori btn btn-primary col-lg-3 py-4" style="margin-bottom: 20px">
                    <a href="/kategori/sport" class="text-white"><img class="img-kategori"
                            src="assets/icon/olahraga.png" width="35px">Sport</a>
                </div>

                <div class="list-kategori btn btn-primary col-lg-3 py-4" style="margin-bottom: 20px">
                    <a href="/kategori/review_buku" class="text-white"><img class="img-kategori"
                            src="assets/icon/review.png" width="35px">Review Buku</a>
                </div>
                <div class="col-sm-1"></div>
                <div class="list-kategori btn btn-primary col-lg-3 py-4" style="margin-bottom: 20px">
                    <a href="/kategori/fantasi" class="text-white"><img class="img-kategori"
                            src="assets/icon/fantasi.png" width="35px">Fantasi</a>
                </div>
                <div class="col-sm-1"></div>
                <div class="list-kategori btn btn-primary col-lg-3 py-4" style="margin-bottom: 20px">
                    <a href="/kategori/fashion" class="text-white"><img class="img-kategori"
                            src="assets/icon/fashion.png" width="35px">Fashion</a>
                </div>

            </div>
        </div>
    </div>
@endsection
