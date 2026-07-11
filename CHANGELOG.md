# Changelog

Todos los cambios importantes de este proyecto serán documentados en este archivo.

El formato de este documento está basado en **Keep a Changelog** y el proyecto sigue el versionado **Semantic Versioning (SemVer)**.

---

## [1.1.0] - 2026-07-08

### ✨ Agregado
- Implementación de la pantalla **Dashboard** con información principal del usuario.
- Desarrollo del módulo **Pets** para mostrar el listado de mascotas.
- Implementación del módulo **Profile** con la información del usuario.
- Configuración de rutas nombradas para la navegación entre pantallas.
- Creación del paquete **core** para almacenar componentes reutilizables.
- Desarrollo del widget personalizado **AppButton**.
- Desarrollo del widget personalizado **AppTextField**.
- Incorporación del widget **LoadingWidget** para estados de carga.
- Implementación de validadores reutilizables para formularios.
- Configuración del tema global utilizando **Material Design 3**.
- Implementación de la entidad **Pet**.
- Creación del repositorio **PetRepository**.
- Implementación de **PetRepositoryImpl** con datos simulados.
- Desarrollo del caso de uso **GetPetsUseCase**.
- Organización del proyecto mediante arquitectura modular basada en características (Feature First).

### 🔄 Mejorado
- Reorganización de la estructura del proyecto para facilitar el mantenimiento.
- Centralización de widgets y utilidades dentro del paquete **core**.
- Mejora en la navegación mediante un router centralizado.
- Uniformidad visual gracias a un tema global compartido.

### 🐛 Corregido
- Ajustes menores en la navegación entre módulos.
- Correcciones en la organización de carpetas y archivos del proyecto.
- Optimización del código para mejorar su legibilidad y reutilización.

---

## [1.0.0] - 2026-07-01

### 🎉 Lanzamiento inicial

Primera versión funcional del proyecto **PetCare**.

### ✨ Agregado
- Configuración inicial del proyecto en Flutter.
- Configuración de Material Design 3.
- Implementación del módulo de autenticación.
- Creación de la pantalla de inicio de sesión.
- Implementación de la entidad **User**.
- Creación de la interfaz **AuthRepository**.
- Implementación de **AuthRepositoryImpl**.
- Desarrollo del caso de uso **LoginUseCase**.
- Validaciones básicas para el formulario de inicio de sesión.
- Configuración inicial del sistema de rutas.
- Preparación de la arquitectura modular del proyecto.
- Configuración inicial del paquete **core**.
- Definición del tema principal de la aplicación.

### 📂 Estructura
- Organización del proyecto utilizando una arquitectura por características.
- Separación de responsabilidades entre las capas **Presentation**, **Domain** y **Data**.

### 🔒 Seguridad
- Validación básica de correo electrónico y contraseña antes del inicio de sesión.

---

## Próximas versiones

### 🚀 Planeado
- Integración con una API REST.
- Persistencia de sesión del usuario.
- Gestión completa de mascotas (Crear, Editar y Eliminar).
- Almacenamiento local de información.
- Consumo de servicios remotos.
- Manejo de estado con Provider, Riverpod o Bloc.
- Implementación de modo oscuro.
- Internacionalización (i18n).
- Pruebas unitarias.
- Pruebas de integración.
- Optimización del rendimiento de la aplicación.