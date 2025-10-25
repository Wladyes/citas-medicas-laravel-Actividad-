<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
   public function up()
{
    Schema::create('citas', function (Blueprint $table) {
        $table->id();
        $table->foreignId('medico_id')->constrained('medicos')->onDelete('cascade');
        $table->foreignId('paciente_id')->constrained('pacientes')->onDelete('cascade');
        $table->date('fecha');
        $table->time('hora');
        $table->string('motivo')->nullable();
        $table->string('estado')->default('pendiente');
        $table->timestamps();
    });
}


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('citas');
    }
};
