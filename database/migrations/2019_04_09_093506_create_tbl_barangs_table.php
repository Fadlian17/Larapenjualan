<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblBarangsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_barangs', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('kode_barang');
            $table->string('nama_barang');
            $table->bigInteger('kode_jenis')->unsigned();
            $table->foreign('kode_jenis')->references('id')->on('tbl_jenis_barangs')->onUpdate('cascade')->onDelete('cascade');
            $table->bigInteger('harga_net');
            $table->bigInteger('harga_jual');
            $table->bigInteger('stok');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_barangs');
    }
}
