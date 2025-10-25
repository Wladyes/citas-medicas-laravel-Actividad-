<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Paciente>
 */
class PacienteFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
{
    return [
        'nombre' => $this->faker->name(),
        'fecha_nacimiento' => $this->faker->date('Y-m-d', '2005-12-31'),
        'correo' => $this->faker->unique()->safeEmail(),
        'telefono' => $this->faker->phoneNumber(),
    ];
}

}
