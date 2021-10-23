<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRegisterInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('register_infos', function (Blueprint $table) {
            $table->id();
            $table->string('first_title');
            $table->longText('first_description');
            $table->string('secound_title');
            $table->longText('secound_description');
            $table->string('third_title');
            $table->longText('third_description');
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
        Schema::dropIfExists('register_infos');
    }
}
