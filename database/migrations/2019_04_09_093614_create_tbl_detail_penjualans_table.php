<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblDetailPenjualansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_detail_penjualans', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('no_faktur')->unsigned();
            $table->foreign('no_faktur')->references('id')->on('tbl_penjualans')->onUpdate('cascade')->onDelete('cascade');
            $table->bigInteger('kode_barang')->unsigned();
            $table->foreign('kode_barang')->references('id')->on('tbl_barangs')->onUpdate('cascade')->onDelete('cascade');
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
        Schema::dropIfExists('tbl_detail_penjualans');
    }
}
