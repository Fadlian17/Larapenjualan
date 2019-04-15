<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblPetugasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_petugas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('id_petugas');
            $table->string('nama_petugas');
            $table->text('alamat');
            $table->string('email');
            $table->bigInteger('telpon');
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
        Schema::dropIfExists('tbl_petugas');
    }
}
