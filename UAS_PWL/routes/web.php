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


// Route::get('/pegawai','App\Http\Controllers\PegawaiController@index');
Route::get('/cari','App\Http\Controllers\LiterasiController@cari');
Route::get('/cari2','App\Http\Controllers\LiterasiController@cari2');
Route::get('/home','App\Http\Controllers\LiterasiController@home');
// Route::get('/kategori','App\Http\Controllers\LiterasiController@kategori');
Route::get('/kategori/puisi','App\Http\Controllers\LiterasiController@puisi');
Route::get('/kategori/cerpen','App\Http\Controllers\LiterasiController@cerpen');
Route::get('/kategori/cerita_rakyat','App\Http\Controllers\LiterasiController@cerita_rakyat');
Route::get('/kategori/dongeng','App\Http\Controllers\LiterasiController@dongeng');
Route::get('/kategori/kesehatan','App\Http\Controllers\LiterasiController@kesehatan');
Route::get('/kategori/sport','App\Http\Controllers\LiterasiController@sport');
Route::get('/kategori/review_buku','App\Http\Controllers\LiterasiController@review_buku');
Route::get('/kategori/fashion','App\Http\Controllers\LiterasiController@fashion');

Route::get('/postingan/{id_literasi}','App\Http\Controllers\LiterasiController@postingan');
Route::get('/edit/{id_literasi}','App\Http\Controllers\LiterasiController@edit');
Route::get('/hapus/{id_literasi}','App\Http\Controllers\LiterasiController@hapus');
Route::post('/update','App\Http\Controllers\LiterasiController@update');
Route::post('/store','App\Http\Controllers\LiterasiController@store');
Auth::routes();