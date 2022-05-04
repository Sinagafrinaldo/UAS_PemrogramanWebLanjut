@extends('layouts._dashboard.app')

@section('content')
    <h1 class="mt-1">Laporan Masalah</h1>
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="col-md-2">
            </div>
            <div class="col-md-6 mb-4">
                <form action=" {{ route('admin.cari') }}" method="GET">
                    <div class="input-group">
                        <input type="text" name="cari" id="form1" placeholder="Masukkan kata kunci .." class="form-control"
                            value="{{ old('cari') }}">
                        <input class="btn btn-primary ml-2" type="submit" value="CARI">
                    </div>
                </form>
            </div>
        </div>
        <br><br>

        @foreach ($laporan as $p)
            <div class="shadow p-3 mb-4 bg-white rounded">
                <div class="card border-0">
                    <div class="row justify-content">

                        <div class="col-md " style="padding:30px">
                            <h4 class="card-title">{{ $p->judul_laporan }}</h4>
                            <hr>

                            <p class="text-justify">
                                {!! $p->isi_laporan !!}
                            </p>

                            @if ($p->image_laporan != null)
                                <strong>Lampiran:</strong><br><br>
                                <div class="rounded">
                                    <img src="/img/upload-laporan/{{ $p->image_laporan }}"
                                        class="card-img-top img-sm-thumbnail border-0" style="width: 50%; height:50%"
                                        alt="...">
                                </div>
                            @endif
                            <hr>
                            <div class="row">
                                <div class="col-md-9">
                                    <p>Oleh: {{ $p->name }}</p>
                                    <p>Waktu: {{ $p->waktu }}</p>
                                </div>

                            </div>
                            <div class=" row justify-content-center">

                                @if ($p->status == 'Belum Ditanggapi')
                                    <div class="btn btn-secondary col-sm-2">Belum Ditanggapi</div>
                                @elseif($p->status == 'Diterima')
                                    <div class="btn btn-success col-sm-2 ">Diterima</div>
                                @elseif($p->status == 'Ditolak')
                                    <div class="btn btn-danger col-sm-2">Ditolak</div>
                                @endif
                                &emsp;
                                <a onclick="return confirm('Apakah anda yakin?') " class="btn btn-warning col-sm-2"
                                    href="laporan-masalah/hapus-laporan/{{ $p->id_laporan }}">Hapus</a>
                            </div>

                        </div>


                    </div>

                    <hr>
                    <div class="">
                        <form action="{{ route('admin.update-status') }}" method="post" enctype="multipart/form-data">
                            {{ csrf_field() }}
                            <label class="form-label"><strong>Kelola Status
                                    Laporan</strong></label>
                            <br>
                            <div class="row justify-content-center">
                                <div class="col-md-10">
                                    <select name="status_kategori" class="form-select">
                                        <option disabled selected>--Pilih Status--</option>
                                        <option value="Belum Ditanggapi" name="Belum Ditanggapi">Belum Ditanggapi</option>
                                        <option value="Diterima" name="Diterima">Diterima</option>
                                        <option value="Ditolak" name="Ditolak">Ditolak</option>
                                    </select>
                                </div>
                                <input type="text" name="id_laporan" hidden value="{{ $p->id_laporan }}">

                                <div class="col-md-1">
                                    <button type="submit" value="Simpan Data" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>


                </div>
            </div>
        @endforeach
    </div class="pagination justify-content-center">
    {{ $laporan->links() }}
    </div>
@endsection
