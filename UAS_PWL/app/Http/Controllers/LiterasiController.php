<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class LiterasiController extends Controller
{
    //
    public function index()
    {
    	$literasi = DB::table('literasi')
		->orderby('waktu_post' , 'desc')
		->paginate(3);
		return view('list',['literasi' => $literasi]);
 
    }
	  public function home()
    {
		

		$literasi = DB::table('literasi')
		->orderby('waktu_post' , 'desc')
		->paginate(3);
 
		return view('home',['literasi' => $literasi]);
 
    }
    public function admin()
    {
 
    	$literasi = DB::table('literasi')->get();

  
    	return view('admin',['literasi' => $literasi]);
 
    }
    public function tambah()
	{
	
		// memanggil view tambah
		return view('tambah');
	
	}
    public function store(Request $request)
	{
		// insert data ke table literasi
	
		
		$this->validate($request, rules:[
			'judul' => 'required',
			'kategori' => 'required',
			'isi'=> 'required',
			'image' => 'required|mimes:jpg,jpeg,png'

		]);
		$gambar = $request->image->getClientOriginalName();

		$image = $request->image->storeAs('thumbnail', $gambar);
		DB::table('literasi')->insert([
			'judul' => $request->judul,
			'kategori' => $request->kategori,
			'isi' => $request->isi,
            'name' =>$request->name,
			'image' =>$gambar
		]);
		return redirect('/home');
	
	}
    public function edit($id_literasi)
	{

		$literasi = DB::table('literasi')->where('id_literasi',$id_literasi)->get();

		return view('edit',['literasi' => $literasi]);
	
	}

	public function update(Request $request)
	{

	DB::table('literasi')->where('id_literasi',$request->id_literasi)->update([
			'judul' => $request->judul,
			'isi' => $request->isi,
			'kategori' => $request->kategori
		]);

		return redirect('/admin');
	}

	public function hapus($id_literasi)
	{
	
		DB::table('literasi')->where('id_literasi',$id_literasi)->delete();
			
		
		return redirect('/admin');
	}
	public function cari(Request $request)
	{
	
		$cari = $request->cari;

		$literasi = DB::table('literasi')
		->where('judul','like',"%".$cari."%")
		->orwhere('isi','like',"%".$cari."%")
		->orwhere('kategori','like',"%".$cari."%")
		->orderby('waktu_post' , 'desc')
		->paginate(3)->withQueryString();

		return view('home',['literasi' => $literasi]);

	}
	public function cari2(Request $request)
	{
	
		$cari = $request->cari;

		$literasi = DB::table('literasi')
		->where('judul','like',"%".$cari."%")
		->orwhere('isi','like',"%".$cari."%")
		->orwhere('kategori','like',"%".$cari."%")
		->orderby('waktu_post' , 'desc')
		->paginate(3)->withQueryString();

		return view('list',['literasi' => $literasi]);

	}
	public function postingan(Request $request)
	{
	$literasi = DB::table('literasi')->where('id_literasi',$request->id_literasi)->get();
		return view('postingan',['literasi' => $literasi]);
	}
	public function puisi(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Puisi')->orderby('waktu_post' , 'desc')->paginate(3)->withQueryString();
		return view('hasil_kategori',['literasi' => $literasi]);
	}
	public function cerpen(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Cerita Pendek')->orderby('waktu_post' , 'desc')->paginate(3)->withQueryString();
		return view('hasil_kategori',['literasi' => $literasi]);
	}
	public function cerita_rakyat(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Cerita Rakyat')->orderby('waktu_post' , 'desc')->paginate(3)->withQueryString();
		return view('hasil_kategori',['literasi' => $literasi]);
	}
	public function dongeng(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Dongeng')->orderby('waktu_post' , 'desc')->paginate(3)->withQueryString();
		return view('hasil_kategori',['literasi' => $literasi]);
	}
	public function kesehatan(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Kesehatan')->orderby('waktu_post' , 'desc')->paginate(3)->withQueryString();
		return view('hasil_kategori',['literasi' => $literasi]);
	}
	public function sport(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Sport')->orderby('waktu_post' , 'desc')->paginate(3)->withQueryString();
		return view('hasil_kategori',['literasi' => $literasi]);
	}
	public function review_buku(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Review Buku')->orderby('waktu_post' , 'desc')->paginate(3)->withQueryString();
		return view('hasil_kategori',['literasi' => $literasi]);
	}
    public function fantasi(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Fantasi')->orderby('waktu_post' , 'desc')->paginate(3)->withQueryString();
		return view('hasil_kategori',['literasi' => $literasi]);
	}
	public function fashion(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Fashion')->orderby('waktu_post' , 'desc')->paginate(3)->withQueryString();
		return view('hasil_kategori',['literasi' => $literasi]);
	}

}
