<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>
# Sistema de Citas Médicas - Laravel 12

Proyecto desarrollado para la actividad grupal de migraciones, modelos, factories y seeders en Laravel.

---

## 🚀 Descripción

Este proyecto implementa un **Sistema de Citas Médicas** usando Laravel 12 y MySQL. Incluye:

- Modelos y migraciones correctamente relacionados entre sí
- Uso de Artisan para generar modelos, migraciones y factories
- Base de datos MySQL con relaciones bien definidas
- Factories para generar 100 registros de prueba por tabla
- Seeder para poblar automáticamente la base de datos
- Estructura lista para ampliar a CRUD, vistas, API, etc.

---

## 🗂️ Estructura de Tablas

- **medicos**: Información de médicos (nombre, especialidad, correo, teléfono)
- **pacientes**: Información de pacientes (nombre, fecha de nacimiento, correo, teléfono)
- **citas**: Registra citas médicas (referenciando médico, paciente, fecha, hora, motivo, estado)

---

## 📦 Instalación y Uso

### 1. Clonar el repositorio

```bash
git clone https://github.com/TU_USUARIO/TU_REPOSITORIO.git
cd TU_REPOSITORIO
2. Instalar dependencias
bash


composer install
3. Copiar archivo de entorno y configurar
bash


cp .env.example .env
Edita el archivo .env y coloca tus datos de conexión a MySQL:
text


DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=citas_medicas_pro
DB_USERNAME=tu_usuario
DB_PASSWORD=tu_contraseña
4. Generar la clave de la aplicación
bash


php artisan key:generate
5. Ejecutar migraciones
bash


php artisan migrate
6. Poblar la base de datos con datos de prueba
bash


php artisan db:seed
🏗️ Estructura del Código
Modelos:
app/Models/Medico.php
app/Models/Paciente.php
app/Models/Cita.php
Migraciones:
database/migrations/xxxx_create_medicos_table.php
database/migrations/xxxx_create_pacientes_table.php
database/migrations/xxxx_create_citas_table.php
Factories:
database/factories/MedicoFactory.php
database/factories/PacienteFactory.php
database/factories/CitaFactory.php
Seeder principal:
database/seeders/DatabaseSeeder.php
📝 Notas
No se incluye la base de datos ni datos reales.
Cada usuario debe crear la base de datos localmente y poblarla con los comandos migrate y db:seed.
Puedes modificar y ampliar el proyecto para agregar vistas, controladores, autenticación, API, etc.
📄 Créditos
Proyecto realizado por el grupo de trabajo para la materia de [Nombre de la materia/profesor].
🐛 ¿Problemas?
Si tienes dudas o problemas, abre un issue o contacta a los autores del repositorio.
text





The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
