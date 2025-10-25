<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Cita>
 */
class CitaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
{
    return [
        'medico_id' => \App\Models\Medico::inRandomOrder()->first()?->id ?? 1,
        'paciente_id' => \App\Models\Paciente::inRandomOrder()->first()?->id ?? 1,
        'fecha' => $this->faker->dateTimeBetween('now', '+1 year')->format('Y-m-d'),
        'hora' => $this->faker->time('H:i'),
        'motivo' => $this->faker->sentence(),
        'estado' => $this->faker->randomElement(['pendiente', 'confirmada', 'cancelada']),
    ];
}

}

