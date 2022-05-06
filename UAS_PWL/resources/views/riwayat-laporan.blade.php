<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="shortcut icon" href="/assets/images/icon.svg" type="image/x-icon">
<title>Riwayat || LiterasiKUY</title>

@extends('layouts.app')

@section('content')
    <div class="container-fluid">
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
                <div class="text-center" style="color: #1F76C6;">
                    <h1 style="padding: 10px"><strong>Riwayat Laporan Masalah</strong>
                        <hr width="50%" margin="auto">
                    </h1>
                </div>

                @foreach ($riwayat as $p)
                    @if ($p->id_user == auth()->user()->id)
                        <div class="shadow p-3 mb-5 bg-white rounded" style="margin-top: -12">
                            <div class="card border-0">
                                <div class="row justify-content-start">

                                    <div class="col-md align-self-center" style="padding:30px">
                                        <h4 class="card-title">{{ $p->judul_laporan }}</h4>
                                        <hr>
                                        {{-- <h6 class="card-category">{{ $p->kategori_request }}</h6> --}}
                                        <p class="text-justify">
                                            {!! $p->isi_laporan !!}
                                        </p>

                                        @if ($p->image_laporan != null)
                                            <strong>Lampiran:</strong><br><br>
                                            <div class="rounded">
                                                <img src="/upload-laporan/{{ $p->image_laporan }}"
                                                    class="card-img-top img-sm-thumbnail border-0"
                                                    style="width: 50%; height:50%" alt="...">
                                            </div>
                                        @endif
                                        <hr>
                                        <div class="row">
                                            <div class="col-md-9">
                                                <p>Oleh: {{ $p->name }}</p>
                                                <p>Waktu: {{ $p->waktu }}</p>
                                            </div>

                                        </div>
                                        <div class="row justify-content-center ">
                                            <div>
                                                @if ($p->status == 'Belum Ditanggapi')
                                                    <div class="btn btn-secondary">Belum Ditanggapi</div>
                                                @elseif($p->status == 'Diterima')
                                                    <div class="btn btn-success ">Diterima</div>
                                                @elseif($p->status == 'Ditolak')
                                                    <div class="btn btn-danger">Ditolak</div>
                                                @endif
                                            </div> &emsp;
                                            <a onclick="return confirm('Apakah anda yakin?') "
                                                class="btn btn-danger col-sm-0"
                                                href="riwayat-laporan/hapus-laporan/{{ $p->id_laporan }}">Hapus</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    @endif
                @endforeach
            </div>
            <div class="pagin">
                {{ $riwayat->links() }}
            </div>

        </div>
    </div>
@endsection
