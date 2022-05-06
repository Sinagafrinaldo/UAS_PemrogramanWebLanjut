<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Posting || LiterasiKUY</title>
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


   <div class="container" style="margin-top: -20;margin-bottom:-30">
        <div class="shadow p-3 mb-5 bg-white rounded">
            <div class="text-center" style="color: #1F76C6;">
                <h1 style="padding: 15px"><strong>Buat Postingan</strong>
                    <hr width="50%" margin="auto">
                </h1>
            </div>      

            <div class="card-body" style="margin-top:-25">
                <form action="/store" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <div class="mb-4">
                        <label for="exampleInputEmail1" class="form-label"><strong>Judul</strong></label>
                            <input type="text" name="judul" required="required" class="form-control">
                        {{-- <input type="text" name="judul"> --}}
                        @error('judul')
                            <span class="text-danger">{{ $message }}; </span>
                        @enderror
                    </div>
                    
                    <div class="mb-2">
                        <label for="exampleInputPassword1" class="form-label"><strong>Kategori</strong></label>
                        <br>

                        <select name="kategori" class="form-select" aria-label="Default select example">
                            <option disabled selected>Pilih Kategori</option>
                            <option value="Puisi" name="Puisi">Puisi</option>
                            <option value="Cerita Pendek" name="Cerita Pendek">Cerita Pendek</option>
                            <option value="Cerita Rakyat" name="Cerita Rakyat">Cerita Rakyat</option>
                            <option value="Dongeng" name="Dongeng">Dongeng</option>
                            <option value="Kesehatan" name="Kesehatan">Kesehatan</option>
                            <option value="Sport" name="Sport">Sport</option>
                            <option value="Review Buku" name="Review Buku">Review Buku</option>
                            <option value="Fantasi" name="Fantasi">Fantasi</option>
                            <option value="Fashion" name="Fashion">Fashion</option>
                        </select>
                        @error('kategori')
                            <span class="text-danger">{{ $message }}; </span>
                        @enderror

                        <input type="text" name="name" hidden value="<?php echo $name; ?>">
                    </div>

                    <div class="mb-2">
                        <label style="margin-top: 15px;"><strong> Upload Thumbnail</strong></label><br>
                        <input type="file"  class="img-fluid" id="image" class="@error('image') is-invalid @enderror" name="image">
                        @error('image')
                            <span class="text-danger">{{ $message }}; </span>
                        @enderror
                    </div>
                   
                    <div>
                        <label style="margin-top: 15px;"><strong>Deskripsi</strong></label><br>

                        <textarea class="text-posting" id="isi" type="text" name="isi"></textarea> <br />
                        @error('isi')
                            <span class="text-danger">{{ $message }}; </span>
                        @enderror
                    </div>

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
