<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class barangController extends Controller
{
    
    public function save_barang(Request $r)
    {
    	$save = new \App\tbl_barang();
    	$save->nama_barang = $r->input('nama_barang');
    	$save->kode_jenis = $r->input('kode_jenis');
    	$save->harga_net = $r->input('harga_net');
    	$save->harga_jual = $r->input('harga_jual');
    	$save->stok = $r->input('stok');
    	$save->kode_barang = str_random(5);
    	$save->save();
    	return redirect('detail_barang');
    }
    public function save_jenis(Request $r)
    {
    	$save = new \App\tbl_jenis_barang();
    	$save->jenis = $r->input('jenis');
        $save->kode_jenis = str_random(5);
    	$save->save();
    	return redirect()->back();
    }
}
