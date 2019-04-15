<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblDetailBarangMasuksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_detail_barang_masuks', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('no_nota')->unsigned();
            $table->foreign('no_nota')->references('id')->on('tbl_barang_masuks')->onUpdate('cascade')->onoDelete('cascade');
            $table->bigInteger('kode_barang')->unsigned();
            $table->foreign('kode_barang')->references('id')->on('tbl_barangs')->onUpdate('cascade')->onoDelete('cascade');
            $table->bigInteger('jumlah');
            $table->bigInteger('subtotal');
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
        Schema::dropIfExists('tbl_detail_barang_masuks');
    }
}
