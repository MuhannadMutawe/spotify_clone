# 🎧 Spotify Clone App (Flutter)

<p align="center">

<img src="https://img.shields.io/badge/Spotify%20Clone-1DB954?style=for-the-badge&logo=spotify&logoColor=white" />
<img src="https://img.shields.io/badge/Music%20Streaming-App-black?style=for-the-badge" />
<img src="https://img.shields.io/badge/Flutter-Framework-02569B?style=for-the-badge&logo=flutter&logoColor=white" />
<img src="https://img.shields.io/badge/Dart-Language-0175C2?style=for-the-badge&logo=dart&logoColor=white" />

<br/>

<img src="https://img.shields.io/badge/State%20Management-BLoC-blue?style=flat-square" />
<img src="https://img.shields.io/badge/UI-Responsive-success?style=flat-square" />
<img src="https://img.shields.io/badge/PRs-Welcome-brightgreen?style=flat-square" />

</p>

A sleek, modern music streaming interface built with Flutter, based on the popular redesign by Soroush Norozy. This project focuses on high-fidelity animations, responsive layouts, and a clean dark-mode aesthetic.

<p align="center">
  <img src="assets\images\thumbnail.jpg"/>
</p>

---

## 🚀 Features

- 🎵 Browse & play songs
- ❤️ Add / remove songs from favorites
- 🔍 Search functionality
- 📱 Responsive UI (works on multiple screen sizes)
- 🎨 Clean and modern design (Spotify-like)
- ⚡ State management using Bloc/Cubit
- 🧠 Optimized performance

---

## 📁 Project Structure

```
## Project Structure

The project is organized into layers following Clean Architecture principles:

├── lib/
│   ├── common/              # Shared components across the app
│   │   ├── bloc/            # Global/common BLoCs
│   │   ├── helper/          # General helper functions
│   │   └── widgets/         # Reusable UI components
│   ├── core/                # Core configurations and base logic
│   │   ├── config/          # Environment and app-wide configs
│   │   ├── usecases/        # Base classes for use cases
│   │   └── utils/           # Extension methods and utilities
│   ├── data/                # Data layer (implementation)
│   │   ├── models/          # Data transfer objects (JSON parsing)
│   │   ├── repository/      # Repository implementations
│   │   └── sources/         # Remote and local data sources (APIs/DB)
│   ├── domain/              # Domain layer (business logic)
│   │   ├── entities/        # Core business objects
│   │   ├── repository/      # Repository interfaces (abstract classes)
│   │   └── usecases/        # Feature-specific business logic
│   └── presentation/        # UI layer (screens and feature-specific logic)
│       ├── auth/            # Authentication screens and logic
│       ├── choose_mode/     # Theme/Mode selection
│       ├── home/            # Home dashboard
│       ├── intro/           # Onboarding screens
│       ├── profile/         # User profile management
│       ├── song_player/     # Music player interface
│       └── splash/          # Initial splash screen

```

---
