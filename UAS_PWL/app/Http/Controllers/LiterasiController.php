<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
class LiterasiController extends Controller
{
    
    public function index()
    {
    	$literasi = DB::table('literasi')
		->orderby('waktu_post' , 'desc')
		->paginate(10)->onEachSide(0);
		return view('list',['literasi' => $literasi]);
    }
	public function home()
    {
		$literasi = DB::table('literasi')
		->orderby('waktu_post' , 'desc')
		->paginate(10)->onEachSide(0);

		return view('home',['literasi' => $literasi]);

    }
    public function tambah()
	{
	
		// memanggil view tambah
		return view('tambah');
	
	}
    public function store(Request $request)
	{
		$this->validate($request, rules:[
			'judul' => 'required',
			'kategori' => 'required',
			'isi'=> 'required',
			'image' => 'required|mimes:jpg,jpeg,png,bmp,gif,svg'

		]);
		$img = $request->file('image');
        $ext = $img->getClientOriginalExtension();
        $name =  $request->image->getClientOriginalName();
        $path = public_path('uploads');
        $img->move($path, $name);
		$content = $request->input('isi');
		$slug =  Str::slug($request->judul,"-");
		DB::table('literasi')->insert([
			'judul' => $request->judul,
			'kategori' => $request->kategori,
			'isi' => $content,
            'name' =>$request->name,
			'image' =>$name,
			'slug' =>$slug
		]);
		return redirect('/home');
	
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
		
		->paginate(10)->withQueryString()->onEachSide(0);

		return view('list',['literasi' => $literasi]);

	}
	public function cari2(Request $request)
	{
	
		$cari = $request->cari;

		$literasi = DB::table('literasi')
		->where('judul','like',"%".$cari."%")
		->orwhere('isi','like',"%".$cari."%")
		->orwhere('kategori','like',"%".$cari."%")
		->orderby('waktu_post' , 'desc')
		->paginate(10)->withQueryString()->onEachSide(0);

		return view('list',['literasi' => $literasi]);

	}
	public function postingan(Request $request)
	{
	$literasi = DB::table('literasi')->where('slug',$request->slug)->get();
		return view('postingan',['literasi' => $literasi]);
	}
	public function puisi(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Puisi')->orderby('waktu_post' , 'desc')->paginate(10)->withQueryString()->onEachSide(0);
		return view('hasil_kategori',['literasi' => $literasi]);
	}
	public function cerpen(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Cerita Pendek')->orderby('waktu_post' , 'desc')->paginate(10)->withQueryString()->onEachSide(0);
		return view('hasil_kategori',['literasi' => $literasi]);
	}
	public function cerita_rakyat(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Cerita Rakyat')->orderby('waktu_post' , 'desc')->paginate(10)->withQueryString()->onEachSide(0);
		return view('hasil_kategori',['literasi' => $literasi]);
	}
	public function dongeng(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Dongeng')->orderby('waktu_post' , 'desc')->paginate(10)->withQueryString()->onEachSide(0);
		return view('hasil_kategori',['literasi' => $literasi]);
	}
	public function kesehatan(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Kesehatan')->orderby('waktu_post' , 'desc')->paginate(10)->withQueryString()->onEachSide(0);
		return view('hasil_kategori',['literasi' => $literasi]);
	}
	public function sport(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Sport')->orderby('waktu_post' , 'desc')->paginate(10)->withQueryString()->onEachSide(0);
		return view('hasil_kategori',['literasi' => $literasi]);
	}
	public function review_buku(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Review Buku')->orderby('waktu_post' , 'desc')->paginate(10)->withQueryString()->onEachSide(0);
		return view('hasil_kategori',['literasi' => $literasi]);
	}
    public function fantasi(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Fantasi')->orderby('waktu_post' , 'desc')->paginate(10)->withQueryString()->onEachSide(0);
		return view('hasil_kategori',['literasi' => $literasi]);
	}
	public function fashion(Request $request)
	{
	$literasi = DB::table('literasi')->where('kategori', 'Fashion')->orderby('waktu_post' , 'desc')->paginate(10)->withQueryString()->onEachSide(0);
		return view('hasil_kategori',['literasi' => $literasi]);
	}
	public function laporan_kirim(Request $request){
		$content = $request->input('isi');
		
		$this->validate($request, rules:[
				'judul' => 'required',
				'isi'=> 'required',
				'image' => 'image|mimes:jpg,jpeg,png,bmp,gif,svg'

		]);
		if($request->hasFile('image')){
			$img = $request->file('image');
			$ext = $img->getClientOriginalExtension();
			$name =  $request->image->getClientOriginalName();
			$path = public_path('upload-laporan');
			$img->move($path, $name);
			DB::table('request_laporan')->insert([
				'judul_laporan' => $request->judul,
				'isi_laporan' => $content,
				'image_laporan' =>$name,
				'name' =>$request->name,
				'id_user'=>$request->id,
				'status'=> 'Belum Ditanggapi'
			]);
			}else{
			DB::table('request_laporan')->insert([
				'judul_laporan' => $request->judul,
				'isi_laporan' => $content,
				'name' =>$request->name,
				'id_user'=>$request->id,
				'status'=> 'Belum Ditanggapi'
				]);
		}
		return redirect('bantuan');
	}
	public function riwayat_laporan(Request $request)
	{
	$riwayat = DB::table('request_laporan')
		->orderby('waktu' , 'desc')
		->paginate(10)->onEachSide(0);
		return view('riwayat-laporan',['riwayat' => $riwayat]);
	}
	public function hapus_laporan($id_laporan)
	{
	DB::table('request_laporan')->where('id_laporan',$id_laporan)->delete();
		return redirect('riwayat-laporan');
	}

}
