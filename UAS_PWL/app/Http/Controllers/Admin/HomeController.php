<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function __construct()
    {
        $this->middleware('adminMiddle');
    }

    public function index (){
        $literasi = DB::table('literasi')
		->orderby('waktu_post' , 'desc')
		->paginate(3)->onEachSide(0);
 
        return view('dashboard.home',['literasi' => $literasi] ); 
    }
    public function users (){
        $users = DB::table('users')
		->orderby('created_at' , 'desc')
		->paginate(3)->onEachSide(0);

        return view('dashboard.data-user',['users' => $users] ); 
    }
    public function hapus_user($id)
	{
	
		DB::table('users')->where('id',$id)->delete();

        return redirect('admin/users' ); 
	}
    public function cari(Request $request)
	{
	
		$cari = $request->cari;

		$literasi = DB::table('literasi')
		->where('judul','like',"%".$cari."%")
		->orwhere('isi','like',"%".$cari."%")
		->orwhere('kategori','like',"%".$cari."%")
		->orderby('waktu_post' , 'desc')
		->paginate(3)->withQueryString()->onEachSide(0);

	return view('dashboard.home',['literasi' => $literasi] ); 

	}
    public function hapus_postingan($id_literasi)
	{
	
		DB::table('literasi')->where('id_literasi',$id_literasi)->delete();

        return redirect('admin/home' ); 
	}
    public function postingan(Request $request)
	{
	$literasi = DB::table('literasi')->where('id_literasi',$request->id_literasi)->get();
		return view('dashboard.postingan',['literasi' => $literasi]);
	}
    public function edit($id_literasi)
	{

		$literasi = DB::table('literasi')->where('id_literasi',$id_literasi)->get();

		return view('dashboard.edit',['literasi' => $literasi]);
	
	}

	public function update(Request $request)
	{
	$content = $request->input('isi');
	
	$this->validate($request, rules:[
			'judul' => 'required',
			'kategori' => 'required',
			'isi'=> 'required',
			'image' => 'image|mimes:jpg,jpeg,png,bmp,gif,svg'

	]);
	if($request->hasFile('image')){
		$img = $request->file('image');
		$ext = $img->getClientOriginalExtension();
		$name =  $request->image->getClientOriginalName();
		$path = public_path('\img\uploads');
		$img->move($path, $name);
		DB::table('literasi')->where('id_literasi',$request->id_literasi)->update([
			'judul' => $request->judul,
			'isi' => $content,
			'kategori' => $request->kategori,
			'image' =>$name
		]);
	}else{
	DB::table('literasi')->where('id_literasi',$request->id_literasi)->update([
			'judul' => $request->judul,
			'isi' => $content,
			'kategori' => $request->kategori
		]);
	}

		return redirect('admin/home');
	}
	public function laporan (){
        $laporan = DB::table('request_laporan')
		->orderby('waktu' , 'desc')
		->paginate(3)->onEachSide(0);

        return view('dashboard.laporan-masalah',['laporan' => $laporan] ); 
    }
	public function update_status (Request $request){
    DB::table('request_laporan')->where('id_laporan',$request->id_laporan)->update([
			'status' => $request->status_kategori	
		]);
		return redirect('admin/laporan-masalah');
    }
	public function hapus_laporan ( $id_laporan){
    DB::table('request_laporan')->where('id_laporan',$id_laporan)->delete();
		return redirect('admin/laporan-masalah');
    }

}
