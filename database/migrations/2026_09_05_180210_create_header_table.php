<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('header', function (Blueprint $table) {
            $table->id();

            $table->text('logo');
            $table->text('menu_bar');
            $table->text('contacts');
            $table->text('header_action');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('header');
    }
};
