@extends('admin.index')
@section('isi')

<div class="col-md-12">
  <div class="box box-info">
    <div class="box-header with-border">
      <h3 class="box-title">Distributor</h3>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">ID Distributor</th>
            <th scope="col">Nama Distributor</th>
            <th scope="col">Alamat</th>
            <th scope="col">Kota Asal</th>
            <th scope="col">Email</th>
            <th scope="col">Telepon</th>
          </tr>
        </thead>
        @php
          $barang = \App\tbl_distributor::all();
          $i = 1;
        @endphp
        @foreach($barang as $b)
        @php
          $id_jenis = \App\tbl_jenis_barang::where('id', $b->kode_jenis)->value('jenis');
        @endphp
        <tbody>
          <tr>
            <th scope="row">{{$i++}}</th>
            <td>{{$b->id_distributor}}</td>
            <td>{{$b->nama_distributor}}</td>
            <td>{{$b->alamat}}</td>
            <td>{{$b->kota_asal}}</td>
            <td>{{$b->email}}</td>
            <td>{{$b->telpon}}</td>
          </tr>
        </tbody>
        @endforeach
      </table>
    </div>
  </div>
</div>

<div class="col-md-12">
          <!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Tambah Distributor</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            @php
              $jenis = \App\tbl_jenis_barang::all();
            @endphp
            <form class="form-horizontal" method="POST" action="save_distributor">
              @csrf
              <div class="box-body">
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Nama Distributor</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail3" placeholder="Nama Distributor" name="nama_distributor">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Alamat</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail3" placeholder="Alamat" name="alamat">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Kota Asal</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail3" placeholder="Kota Asal" name="kota_asal">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Email</label>

                  <div class="col-sm-10">
                    <input type="email" class="form-control" id="inputEmail3" placeholder="Email" name="email">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Telepon</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail3" placeholder="Telepon" name="telpon">
                  </div>
                </div>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-info pull-right">Tambah</button>
              </div>
              <!-- /.box-footer -->
            </form>
          </div>
</div>
@endsection