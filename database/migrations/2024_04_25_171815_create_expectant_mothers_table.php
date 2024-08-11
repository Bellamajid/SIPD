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
        Schema::create('expectant_mothers', function (Blueprint $table) {
            $table->id();
            $table->foreignId('posyandu_id')->nullable()->constrained()->nullOnDelete()->cascadeOnUpdate();
            $table->foreignId('user_id')->nullable()->constrained()->nullOnDelete()->cascadeOnUpdate();
            $table->string('registration_number');
            $table->string('name');
            $table->integer('age');
            $table->string('spouse_name')->nullable();
            $table->integer('spouse_age')->nullable();
            $table->integer('no_of_pregnancy');
            $table->text('address')->nullable();
            $table->string('education_level')->nullable();
            $table->string('spouse_education_level')->nullable();
            $table->string('occupation')->nullable();
            $table->string('spouse_occupation')->nullable();
            $table->date('hpht')->nullable();
            $table->date('tp')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('expectant_mothers');
    }
};
