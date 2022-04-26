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
    <div class="text-center" style="background-color: #E8F4FF; color: #1F76C6; margin-top: -40px;">
        <h1 style="padding: 30px">Bantuan
            <hr width="40%" margin="auto">
        </h1>

    </div>
    <div class="container">

        <div class="row justify-content text-justify">

            <p> &emsp; &emsp;Website ini merupakan wesbite yang dibuat dengan tujuan untuk meningkatkan literasi bagi para
                pelajar dimulai dari anak kecil, siswa/i sekolah dasar hingga mengeah atas, mahasiswa/i,, dan masyarakat
                luas, khususnya diIndonesia ini. Adanya website ini membantu para pemuda/i untuk meningkatkan kosakata dalam
                berbicara dan menulis. Selain itu, adanya website ini juga membuka kesempatan bagi para pemuda/i yang
                memiliki kemampuan menulis atau sekedar berbagi informasi.</p>

            <br>
            <h5>ANDA BERMINAT UNTUK KONTRIBUSI?</h5>
            <br><br>
            <span> Anda ingin berbagi informasi / artikel / wawasan?? Sangat mudah untuk menjadi anggota di website ini
                yaitu
                dengan cara berikut :</span>
            <ul class="list-unstyled">
                <li> 1. Masuk ke Website ini dengan menu <b>“Login”</b>. Apabila Anda belum memiliki Aku, Anda dapat
                    melakukan
                    pendaftaran Akun
                    dengan mengisi formulir dengan baik dan benar. </li>
                <li>2. Setelah itu, Anda bisa membuat postingan dengan memilih fitur <b>“Posting Karya”</b>.</li>
                <li>3. Kemudian pada saat melakukan posting, masukkan nama judul, isi, gambar yang mendukung artikel
                    tersebut
                    sesuai
                    dengan yang Anda inginkan. </li>
                <li>4. Lalu klik tombol <b>“Submit”</b> untuk melakukan pengiriman artikel / publish karya Anda. </li>
            </ul>
            <br>
            <h5>HANYA INGIN MEMBACA DAN MELIHAT ARTIKEL?</h5>
            <span> Pada website ini, Anda tidak diharuskan melakukan posting artikel. Anda juga dapat untuk membaca
                artikel-artikel
                yang ada saja dengan cara berikut :</span>
            <ul class="list-unstyled">
                <li>1. Masuk ke dalam menu <b>“Kategori”.</b></li>
                <li>2. Setelah itu, Anda bisa memilih kategori bacaan yang ingin Anda baca atau eksplorasi.</li>
                <li>3. Kemudian, web akan menampilkan daftar bacaan / artikel yang sesuai dengan kategori tersebut.</li>
                <li>4. Pilih judul / bacaan yang menarik atau yang sedang Anda cari.</li>
                <li>5. Bacalah artikel tersebut dengan santai dan rileks.</li>
            </ul>
        </div>
    </div>
@endsection
