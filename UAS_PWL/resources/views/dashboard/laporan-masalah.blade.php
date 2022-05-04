@extends('layouts._dashboard.app')

@section('content')
    <h1 class="mt-1">Data Postingan</h1>
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
                    <div class="row justify-content-start">
                        <div class="col-md-3 align-self-center">
                            @if ($p->image_laporan != null)
                                <div class="rounded float-left">
                                    <img src="/img/upload-laporan/{{ $p->image_laporan }}"
                                        class="card-img-top img-sm-thumbnail border-0" alt="...">
                                </div>
                            @endif
                        </div>

                        <div class="col-md-9 align-self-center">
                            <h4 class="card-title">{{ $p->judul_laporan }}</h4>
                            <p style="text-align:justify" class="card-text">{!! $p->isi_laporan !!}
                            </p>
                            {{-- <p>Status: {{ $p->status }}</p> --}}
                            @if ($p->status == 'Belum Ditanggapi')
                                <div class="btn btn-secondary">Belum Ditanggapi</div>
                            @elseif($p->status == 'Diterima')
                                <div class="btn btn-success ">Diterima</div>
                            @elseif($p->status == 'Ditolak')
                                <div class="btn btn-danger">Ditolak</div>
                            @endif

                            <div class="row">
                                <div class="col-md-9">
                                    <p>Oleh: {{ $p->name }}, {{ $p->waktu }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="btn btn-warning col-md-1"
                        href="laporan-masalah/hapus-laporan/{{ $p->id_laporan }}">Hapus</a>
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
