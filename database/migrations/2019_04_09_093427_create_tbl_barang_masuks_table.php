<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblBarangMasuksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_barang_masuks', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('no_nota')->unsigned();
            $table->foreign('no_nota')->references('id')->on('tbl_barang_masuks')->onUpdate('cascade')->onDelete('cascade');
            $table->date('tgl_masuk');
            $table->bigInteger('id_distributor')->unsigned();
            $table->foreign('id_distributor')->references('id')->on('tbl_distributors')->onUpdate('cascade')->onDelete('cascade');
            $table->bigInteger('id_petugas')->unsigned();
            $table->foreign('id_petugas')->references('id')->on('tbl_petugas')->onUpdate('cascade')->onDelete('cascade');
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
        Schema::dropIfExists('tbl_barang_masuks');
    }
}
