<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
@extends('layouts.app')

@section('content')
    <nav class="navbar navbar-expand-sm navbar-light navbar-literasi bg-white shadow-sm">
        <a class="navbar-brand" href="{{ url('/') }}">
            {{-- {{ config('app.name', 'Laravel') }} SDFSDF --}}
            <img src="/assets/images/logo.svg" width="185px" height="40px">
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
 
    <div class="container" style="margin-top: -20;margin-bottom: -25">
        <div class="shadow p-4 mb-5 bg-white rounded">     
            <div class="text-center" style="color: #1F76C6;">
                <h1 style="padding: 10px"><strong>Bantuan</strong>
                    <hr width="50%" margin="auto">
                </h1>
            </div>       
            <div class="row p-3 justify-content text-justify">
                <div style="margin-bottom: 35">
                    <p> &emsp; &emsp;Website ini merupakan wesbite yang dibuat dengan tujuan untuk meningkatkan literasi bagi para
                        pelajar dimulai dari anak kecil, siswa/i sekolah dasar hingga mengeah atas, mahasiswa/i, dan masyarakat
                        luas khususnya di Indonesia. Dengan adanya website diharapkan dapat membantu para pemuda/i untuk meningkatkan kosakata dalam
                        berbicara dan menulis. Selain itu, adanya website ini juga membuka kesempatan bagi para pemuda/i yang
                        memiliki kemampuan menulis atau sekedar berbagi informasi.
                    </p>
                </div>
                <div style="margin-bottom: 35">
                    <h5><strong>ANDA BERMINAT UNTUK KONTRIBUSI?</strong></h5>
                    <br>
                    <p> Anda ingin berbagi informasi/wawasan ? Sangat mudah untuk menjadi anggota 
                        diwebsite ini yaitu dengan cara berikut :
                    </p>
                    <ul style="list-style-type: decimal;width:97%">
                        <li>
                            Masuk ke Website ini dengan menu <b>“Login”</b>. Apabila Anda belum memiliki Aku, 
                            Anda dapat melakukan pendaftaran Akun dengan mengisi formulir dengan baik dan 
                            benar. 
                        </li>
                        <li>
                            Setelah itu, Anda bisa membuat postingan dengan memilih fitur <b>“Posting Karya”</b>.
                        </li>
                        <li>
                            Kemudian pada saat melakukan posting, masukkan nama judul, isi, gambar yang mendukung artikel 
                            tersebut sesuai dengan yang Anda inginkan. 
                        </li>
                        <li>
                            Lalu klik tombol <b>“Submit”</b> untuk melakukan pengiriman artikel / publish karya Anda. 
                        </li>
                    </ul>
                </div>
                <div>
                    <h5><strong>HANYA INGIN MEMBACA DAN MELIHAT ARTIKEL?</strong></h5>
                    <br>
                    <p> Pada website ini, Anda tidak diharuskan melakukan posting artikel. Anda juga dapat untuk membaca
                        artikel-artikel
                        yang ada saja dengan cara berikut :</p>
                    <ul style="list-style-type: decimal;width:97%">
                        <li>Masuk ke dalam menu <b>“Kategori”.</b></li>
                        <li>Setelah itu, Anda bisa memilih kategori bacaan yang ingin Anda baca atau eksplorasi.</li>
                        <li>Kemudian, web akan menampilkan daftar bacaan / artikel yang sesuai dengan kategori tersebut.</li>
                        <li>Pilih judul / bacaan yang menarik atau yang sedang Anda cari.</li>
                        <li>Bacalah artikel tersebut dengan santai dan rileks.</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
@endsection
