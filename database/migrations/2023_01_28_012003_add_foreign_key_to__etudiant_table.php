<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeyToEtudiantTable extends Migration
{
    public function up()
    {
        Schema::table('etudiants', function (Blueprint $table) {
            $table->unsignedBigInteger('ville_id')->nullable();
            $table->foreign('ville_id')->references('id')->on('villes');
        });
    }

    public function down()
    {
        Schema::table('etudiants', function (Blueprint $table) {
            $table->dropForeign(['ville_id']);
            $table->dropColumn('ville_id');
        });
    }
}
