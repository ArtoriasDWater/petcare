# 🐾 PetCare

PetCare es una aplicación desarrollada en **Flutter** con una arquitectura modular orientada a características (*Feature First*), cuyo objetivo es simular la gestión de mascotas mediante una interfaz sencilla, reutilizable y escalable.

El proyecto fue desarrollado como práctica de Flutter implementando conceptos como:

- Material Design 3
- Rutas nombradas
- Arquitectura por características
- Separación por capas (Presentation, Domain y Data)
- Widgets reutilizables
- Casos de uso (Use Cases)
- Repositorios

---

# 📱 Características

- 🔐 Inicio de sesión
- 🏠 Dashboard principal
- 🐶 Visualización de mascotas
- 👤 Perfil de usuario
- 🎨 Tema global utilizando Material 3
- 🧩 Componentes reutilizables
- 📂 Arquitectura limpia y modular

---

# 🏛 Arquitectura

El proyecto sigue una arquitectura basada en módulos (**Feature First**) donde cada funcionalidad se encuentra desacoplada del resto.

```
lib/
│
├── app/
│   ├── app_router.dart
│   └── app_routes.dart
│
├── features/
│
│   ├── auth/
│   │
│   ├── dashboard/
│   │
│   ├── pets/
│   │
│   └── profile/
│
└── main.dart
```

Cada módulo implementa tres capas:

```
Feature
│
├── presentation
│      Pantallas y Widgets
│
├── domain
│      Entidades
│      Repositorios
│      Casos de uso
│
└── data
       Implementación de repositorios
```

Esta separación facilita el mantenimiento y la escalabilidad del proyecto.

---

# 📦 Estructura del proyecto

## App

Contiene la configuración global de la aplicación.

```
app/
```

Aquí se encuentran:

- Configuración de rutas
- Navegación
- Definición de rutas nombradas

---

## Auth

```
features/auth
```

Implementa el proceso de autenticación.

Contiene:

- Entidad User
- LoginUseCase
- AuthRepository
- AuthRepositoryImpl
- LoginPageScreen

Su responsabilidad es validar el inicio de sesión y permitir el acceso al resto de la aplicación.

---

## Dashboard

```
features/dashboard
```

Pantalla principal que da la bienvenida al usuario y permite acceder a las demás funcionalidades de la aplicación.

---

## Pets

```
features/pets
```

Implementa la gestión de mascotas.

Incluye:

- Entidad Pet
- PetRepository
- PetRepositoryImpl
- GetPetsUseCase
- PetsPageScreen

Actualmente la información es simulada mediante un repositorio local.

---

## Profile

```
features/profile
```

Muestra la información del usuario autenticado como:

- Avatar
- Nombre
- Correo electrónico

---

# 🧩 Paquete Core

El proyecto utiliza un paquete independiente llamado:

```
packages/core
```

Este paquete concentra los elementos reutilizables de toda la aplicación.

Entre ellos se encuentran:

- Tema global
- Botones personalizados
- Campos de texto
- Widgets de carga
- Validadores
- Componentes compartidos

Gracias a esto se evita duplicar código entre módulos.

---

# 🎨 Tema

La aplicación utiliza un tema global definido mediante:

```
AppTheme.lightTheme
```

Características:

- Material Design 3
- Colores personalizados
- Tipografía uniforme
- Componentes consistentes

Esto permite mantener la misma apariencia en toda la aplicación.

---

# 🛣 Navegación

La navegación se realiza mediante **Named Routes**.

Ejemplo:

```
/
```

```
/dashboard
```

```
/pets
```

```
/profile
```

La generación de rutas se centraliza en:

```
app_router.dart
```

---

# 📚 Principales conceptos utilizados

- Flutter
- Dart
- Material 3
- StatelessWidget
- Navigator
- Named Routes
- Clean Architecture
- Repository Pattern
- Use Cases
- Modularización
- Widgets reutilizables

---

# 🚀 Cómo ejecutar el proyecto

## 1. Clonar el repositorio

```bash
git clone https://github.com/ArtoriasDWater/petcare.git
```

## 2. Entrar al proyecto

```bash
cd petcare
```

## 3. Instalar dependencias

```bash
flutter pub get
```

## 4. Ejecutar la aplicación

```bash
flutter run
```

---

# 📋 Requisitos

- Flutter 3.x
- Dart SDK 3.x
- Android Studio o VS Code
- Emulador Android o dispositivo físico

---

# 📸 Pantallas

La aplicación cuenta con las siguientes vistas:

- Login
- Dashboard
- Lista de mascotas
- Perfil

> Se pueden agregar capturas de pantalla aquí para documentar la interfaz.

---

# 🔮 Mejoras futuras

- Integración con API REST
- Base de datos local (SQLite/Hive)
- Gestión completa de mascotas (CRUD)
- Persistencia de sesión
- Provider, Riverpod o Bloc para manejo de estado
- Pruebas unitarias
- Pruebas de integración
- Soporte para modo oscuro
- Internacionalización (i18n)

---

# 👨‍💻 Autor

**Jhon Rodríguez**

Proyecto desarrollado como práctica de Flutter aplicando arquitectura modular, patrones de diseño y componentes reutilizables.
