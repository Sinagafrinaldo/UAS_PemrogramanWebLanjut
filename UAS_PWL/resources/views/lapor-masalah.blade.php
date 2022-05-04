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

    <div class="container">
        <div class="card-body margin-posting" style="background-color: E8F4FF">
            <h2>Laporkan Masalah </h2>
            <hr>
            <div class="card-body">
                <p>Silahkan kirim masukan anda jika ingin mengajukan laporan masalah.</p>
                <form action="/kirim" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <label style="margin-top: 15px;">Judul / Topik Masalah</label><br>
                    <input class="input-judul" type="text" name="judul">
                    @error('judul')
                        <span class="text-danger">{{ $message }}; </span>
                    @enderror
                    <br>

                    <input type="text" name="name" hidden value="<?php echo $name; ?>">
                    <input type="text" name="id" hidden value="{{ auth()->user()->id }}">

                    <br>
                    <label style="margin-top: 15px;">Upload Gambar (Jika diperlukan)</label>
                    <br>
                    <input type="file" id="image" class="@error('image') is-invalid @enderror" name="image">
                    @error('image')
                        <span class="text-danger">{{ $message }}; </span>
                    @enderror
                    <br>
                    <label style="margin-top: 15px;">Jelaskan masalah anda</label><br>

                    <textarea class="text-posting" id="isi" type="text" name="isi"></textarea> <br />
                    @error('isi')
                        <span class="text-danger">{{ $message }}; </span>
                    @enderror
                    <br>
                    <div class="action-post">
                        <a href="/" class="btn btn-danger cancel-post">Batal</a>
                        <input type="submit" class="btn btn-primary ready-post" value="Posting">
                    </div>

                </form>

            </div>
        </div>
    </div>
    <script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
    <script>
        ClassicEditor
            .create(document.querySelector('#isi'))
            .then(editor => {
                console.log(editor);
            })
            .catch(error => {
                console.error(error);
            });
    </script>
@endsection
