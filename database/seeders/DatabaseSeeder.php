<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Primero crea médicos y pacientes
        \App\Models\Medico::factory(100)->create();
        \App\Models\Paciente::factory(100)->create();
        // Luego crea citas (que dependen de médicos y pacientes)
        \App\Models\Cita::factory(100)->create();
    }
}
