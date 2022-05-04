@extends('layouts._dashboard.app')

@section('content')
    <h1 class="mt-1">Data User</h1>
    {{-- @extends('dashboard.data-post') --}}

    <table class="table table-striped">
        <tr>
            <th>Nama</th>
            <th>Email</th>
            <th>Tanggal Pembuatan Akun</th>
            <th>Aksi</th>
        </tr>
        @foreach ($users as $p)
            <tr>
                <td>{{ $p->name }}</td>
                <td>{{ $p->email }}</td>
                <td>{{ $p->created_at }}</td>
                <td><a class="btn btn-danger" href="users/hapus-user/{{ $p->id }}"
                        onclick="return confirm('Apakah anda yakin ingin menghapus?')">Hapus</a>
            </tr>
        @endforeach

    </table>

    <div class="pagination justify-content-center">
        {{ $users->links() }}
    </div>
@endsection
