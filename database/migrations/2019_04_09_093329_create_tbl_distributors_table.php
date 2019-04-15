<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTblDistributorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_distributors', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('id_distributor');
            $table->string('nama_distributor');
            $table->Text('alamat');
            $table->string('kota_asal');
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
        Schema::dropIfExists('tbl_distributors');
    }
}
