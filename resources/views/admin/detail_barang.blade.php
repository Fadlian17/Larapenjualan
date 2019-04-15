@extends('admin.index')
@section('isi')

<div class="col-md-12">
	<div class="box box-info">
		<div class="box-header with-border">
			<h3 class="box-title">Barang</h3>
			<table class="table table-bordered">
			  <thead>
			    <tr>
			      <th scope="col">#</th>
			      <th scope="col">Nama Barang</th>
			      <th scope="col">Jenis</th>
			      <th scope="col">Harga Net</th>
			      <th scope="col">Harga Jual</th>
			      <th scope="col">Stok</th>
			    </tr>
			  </thead>
			  @php
			  	$barang = \App\tbl_barang::all();
			  	$i = 1;
			  @endphp
			  @foreach($barang as $b)
			  @php
			  	$id_jenis = \App\tbl_jenis_barang::where('id', $b->kode_jenis)->value('jenis');
			  @endphp
			  <tbody>
			    <tr>
			      <th scope="row">{{$i++}}</th>
			      <td>{{$b->nama_barang}}</td>
			      <td>{{$id_jenis}}</td>
			      <td>{{$b->harga_net}}</td>
			      <td>{{$b->harga_jual}}</td>
			      <td>{{$b->stok}}</td>
			    </tr>
			  </tbody>
			  @endforeach
			</table>
		</div>
	</div>
</div>
@endsection