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
        Schema::create('posyandu_activities', function (Blueprint $table) {
            $table->id();
            $table->foreignId('posyandu_id')->nullable()->constrained()->nullOnDelete()->cascadeOnUpdate();
            $table->foreignId('officer_id')->nullable()->constrained()->nullOnDelete()->cascadeOnUpdate();
            $table->foreignId('expectant_mother_id')->nullable()->constrained()->nullOnDelete()->cascadeOnUpdate();
            $table->integer('pregnancy_week')->nullable();
            $table->integer('height')->nullable();
            $table->integer('weight')->nullable();
            $table->integer('has_vaccinated')->default(1)->nullable();
            $table->string('blood_pressure_level')->nullable();
            $table->decimal('blood_sugar_level')->nullable();
            $table->decimal('systolic_bp')->nullable();
            $table->decimal('diastolic_bp')->nullable();
            $table->decimal('lila')->nullable();
            $table->decimal('body_temperature')->nullable();
            $table->integer('heart_rate')->nullable();
            $table->enum('risk_level', ['high', 'mid', 'low'])->default('low');
            $table->text('complaint')->nullable();
            $table->text('note')->nullable();
            $table->date('return_date')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('posyandu_activities');
    }
};
