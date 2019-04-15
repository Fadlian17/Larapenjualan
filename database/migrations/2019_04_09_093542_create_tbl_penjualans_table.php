<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblPenjualansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_penjualans', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('no_faktur')->unsigned();
            $table->foreign('no_faktur')->references('id')->on('tbl_penjualans')->onUpdate('cascade')->onDelete('cascade');
            $table->date('tgl_penjualan');
            $table->bigInteger('id_petugas')->unsigned();
            $table->foreign('id_petugas')->references('id')->on('tbl_petugas')->onUpdate('cascade')->onDelete('cascade');
            $table->bigInteger('bayar');
            $table->bigInteger('sisa');
            $table->bigInteger('total');
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
        Schema::dropIfExists('tbl_penjualans');
    }
}
