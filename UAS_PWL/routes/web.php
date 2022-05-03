<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/kategori', function () {
    return view('kategori');
});

Route::get('/bantuan', function () {
    return view('bantuan');
});
Route::get('/','App\Http\Controllers\LiterasiController@index');
Route::get('/admin','App\Http\Controllers\LiterasiController@admin');
Auth::routes();
Route::get('/tambah','App\Http\Controllers\LiterasiController@tambah');
Route::get('/tambah', function()
{
    if(Auth::check()) 
    {
        $name = Auth::user()->name;
        return view('tambah', ['name' => $name] );
    }else{
        return view('/auth/login');
    }
});


Route::get('/cari','App\Http\Controllers\LiterasiController@cari');
Route::get('/cari2','App\Http\Controllers\LiterasiController@cari2');
Route::get('/home','App\Http\Controllers\LiterasiController@home');
Route::get('/kategori/puisi','App\Http\Controllers\LiterasiController@puisi');
Route::get('/kategori/cerpen','App\Http\Controllers\LiterasiController@cerpen');
Route::get('/kategori/cerita_rakyat','App\Http\Controllers\LiterasiController@cerita_rakyat');
Route::get('/kategori/dongeng','App\Http\Controllers\LiterasiController@dongeng');
Route::get('/kategori/kesehatan','App\Http\Controllers\LiterasiController@kesehatan');
Route::get('/kategori/sport','App\Http\Controllers\LiterasiController@sport');
Route::get('/kategori/review_buku','App\Http\Controllers\LiterasiController@review_buku');
Route::get('/kategori/fantasi','App\Http\Controllers\LiterasiController@fantasi');
Route::get('/kategori/fashion','App\Http\Controllers\LiterasiController@fashion');

Route::get('/riwayat-laporan','App\Http\Controllers\LiterasiController@riwayat_laporan');
Route::post('/kirim','App\Http\Controllers\LiterasiController@laporan_kirim');
Route::get('/riwayat-laporan/hapus-laporan/{id_laporan}','App\Http\Controllers\LiterasiController@hapus_laporan');
Route::get('/lapor-masalah', function()
{
    if(Auth::check()) 
    {
        $name = Auth::user()->name;
        return view('lapor-masalah', ['name' => $name] );
    }else{
        return view('/auth/login');
    }
});


Route::get('/postingan/{slug}','App\Http\Controllers\LiterasiController@postingan');
Route::get('/edit/{id_literasi}','App\Http\Controllers\LiterasiController@edit');
Route::get('/hapus/{id_literasi}','App\Http\Controllers\LiterasiController@hapus');
Route::post('/update','App\Http\Controllers\LiterasiController@update');
Route::post('/store','App\Http\Controllers\LiterasiController@store');
Auth::routes();

Route::prefix('admin')->group(function(){
    Route::get('/',[App\Http\Controllers\Admin\Auth\LoginController::class,'loginForm']);
    Route::get('/login',[App\Http\Controllers\Admin\Auth\LoginController::class,'loginForm'])->name('admin.login');
    Route::post('/login',[App\Http\Controllers\Admin\Auth\LoginController::class,'login'])->name('admin.login');
    Route::get('/home',[App\Http\Controllers\Admin\HomeController::class,'index'])->name('admin.home');
    Route::get('/logout',[App\Http\Controllers\Admin\Auth\LoginController::class,'logout'])->name('admin.logout');
    Route::get('/users',[App\Http\Controllers\Admin\HomeController::class,'users'])->name('admin.users');
    Route::get('/users/hapus-user/{id}',[App\Http\Controllers\Admin\HomeController::class,'hapus_user'])->name('admin.users.hapus-user');
    Route::get('/postingan/hapus-postingan/{id_literasi}',[App\Http\Controllers\Admin\HomeController::class,'hapus_postingan']);
    Route::get('/postingan/edit-postingan/{id_literasi}',[App\Http\Controllers\Admin\HomeController::class,'edit']);
    Route::get('/postingan/{id_literasi}',[App\Http\Controllers\Admin\HomeController::class,'postingan']);
    Route::post('/update',[App\Http\Controllers\Admin\HomeController::class,'update'])->name('admin.update');
    Route::get('/cari',[App\Http\Controllers\Admin\HomeController::class,'cari'])->name('admin.cari');
    Route::get('/laporan-masalah',[App\Http\Controllers\Admin\HomeController::class,'laporan'])->name('admin.laporan-masalah');
    Route::post('/update-status',[App\Http\Controllers\Admin\HomeController::class,'update_status'])->name('admin.update-status');

    Route::get('/laporan-masalah/hapus-laporan/{id_laporan}',[App\Http\Controllers\Admin\HomeController::class,'hapus_laporan']);
    
});
