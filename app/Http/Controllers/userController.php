<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class userController extends Controller
{
    public function save_distributor(Request $r)
    {
    	$distributor = new \App\tbl_distributor();
    	$distributor->nama_distributor = $r->input('nama_distributor');
        $distributor->id_distributor = str_random(5);
    	$distributor->alamat = $r->input('alamat');
    	$distributor->kota_asal = $r->input('kota_asal');
    	$distributor->email = $r->input('email');
    	$distributor->telpon = $r->input('telpon');
    	$distributor->save();
    	return redirect()->back();
    }
    public function save_petugas(Request $r)
    {
    	$petugas = new \App\tbl_petugas();
        $petugas->nama_petugas = $r->input('nama_petugas');
        $petugas->id_petugas = str_random(7);
        $petugas->alamat = $r->input('alamat');
        $petugas->email = $r->input('email');
        $petugas->telpon = $r->input('telpon');
        $petugas->save();
        return redirect()->back();
    }
    public function save_admin(Request $r)
    {
        $petugas = new \App\User();
        $petugas->name = $r->input('name');
        $petugas->email = $r->input('email');
        $petugas->password = bcrypt($r->input('password'));
        $petugas->save();
        return redirect()->back();
    }
    public function delete_petugas($id)
    {
        $petugas = \App\tbl_petugas::find($id);
        $petugas->delete();
        return redirect()->back();
    }   
}
