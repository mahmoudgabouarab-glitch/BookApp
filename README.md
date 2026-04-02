# 📚 Book App

A modern Flutter book browsing application built with **Clean Architecture**, **BLoC**, and **GoRouter** , image caching, and full localization support.

---

## ✨ Features

- 📖 Browse books with a beautiful carousel UI
- 🔍 View detailed book information
- 🌐 Open book links in browser (URL Launcher)
- 🖼️ Optimized image loading with caching
- 🌍 Full localization support (AR & EN)
- 🧭 Navigation with GoRouter
- 📱 Fully responsive UI with Google Fonts

---

## 🛠️ Tech Stack

| Category | Technology |
|---|---|
| State Management | `flutter_bloc ^9.1.1` |
| Navigation | `go_router ^17.0.1` |
| Networking | `dio ^5.9.0` |
| Dependency Injection | `get_it ^9.2.0` |
| Image Caching | `cached_network_image ^3.4.1` |
| Localization | `flutter_localizations` + `intl_utils ^2.8.13` |
| Carousel | `carousel_slider ^5.1.1` |
| Fonts | `google_fonts ^6.3.3` |
| Functional Programming | `dartz ^0.10.1` |
| Models | `equatable ^2.0.7` |
| URL Handling | `url_launcher ^6.3.2` |
| Date Formatting | `intl ^0.20.2` |

---

## 🏗️ Architecture

This project follows **Clean Architecture** with **BLoC** as the state management pattern:

```
lib/
├── core/
│   ├── errors/
│   │   └── falier.dart
│   │
│   ├── utils/
│   │   ├── api_servise.dart
│   │   ├── assts.dart
│   │   ├── bloc_observer.dart
│   │   ├── constans.dart
│   │   ├── routers.dart
│   │   ├── service_locator.dart
│   │   └── styles.dart
│   │
│   └── widgets/
│       ├── custom_Button.dart
│       ├── custom_error_message.dart
│       ├── custom_loading_circular.dart
│       └── test.dart
│
├── features/
│   ├── category/
│   │   ├── data/
│   │   │   ├── models/
│   │   │   └── repos/
│   │   └── presentation/
│   │       ├── view/
│   │       └── view_models/cubit/
│   │
│   ├── home/
│   ├── search/
│   └── splash/
│
├── generated/
├── l10n/                 # Localization ARB files
└── main.dart
```


## 📸 Screenshots

# Splash 

<img width="1290" height="2796" alt="Image" src="https://github.com/user-attachments/assets/e6e18a35-f4ec-48c0-8a88-34fd58bb32f2" />

# Home

<img width="1290" height="2796" alt="Image" src="https://github.com/user-attachments/assets/5b05fe9f-9278-40d2-ac09-ea442814b4bf" />

# Details

<img width="1290" height="2796" alt="Image" src="https://github.com/user-attachments/assets/13511cdd-53d1-4c22-bdf2-c3de9533b579" />

# Search

<img width="1290" height="2796" alt="Image" src="https://github.com/user-attachments/assets/00b6dad8-6548-441f-bbc8-60fdba4be16c" />

# Category

<img width="1290" height="2796" alt="Image" src="https://github.com/user-attachments/assets/e1dac62d-767c-4cee-a00c-6c2d70c2dd9b" />

<img width="1290" height="2796" alt="Image" src="https://github.com/user-attachments/assets/142514c7-ff1b-404b-b8ef-7c3f96e75035" />
