<?php

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


Route::get('/', function () {
    return view('admin.index');
});
Route::get('/tambah_barang', function () {
    return view('admin.tambah_barang');
});
Route::get('/tambah_jenis', function () {
    return view('admin.tambah_jenis');
});
Route::get('/tambah_distributor', function () {
    return view('admin.tambah_distributor');
});
Route::get('/tambah_petugas', function () {
    return view('admin.tambah_petugas');
});
Route::get('/tambah_admin', function () {
    return view('admin.tambah_admin');
});
Route::get('/detail_barang', function () {
    return view('admin.detail_barang');
});

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
Route::post('save_barang', 'barangController@save_barang');
Route::post('save_jenis', 'barangController@save_jenis');
Route::post('save_petugas', 'userController@save_petugas');
Route::post('save_distributor', 'userController@save_distributor');
Route::post('save_admin', 'userController@save_admin');