# 🌹 Rose Day App

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-green?style=for-the-badge)
![Version](https://img.shields.io/badge/Version-1.0.0-red?style=for-the-badge)

**A beautiful Flutter app to celebrate Rose Day 🌹 — the first day of Valentine's Week.**  
Send love, warmth, and roses to someone special through animations, music, and heartfelt messages.

</div>

---

## 📱 About

**Rose Day** falls on **February 7th**, kicking off Valentine's Week. This app lets you experience the magic of that day with:
- Stunning rose visuals and animations
- Romantic background music
- Heartfelt animated messages
- A beautiful, love-themed UI

Perfect to open on your phone and show to that special someone. 💕

---

## ✨ Features

| Feature | Description |
|---|---|
| 🌹 Rose Animations | Lottie-powered smooth rose animations |
| 🎵 Romantic Music | Auto-playing background romantic audio |
| 🎬 Video Experience | Embedded heartfelt video playback |
| ✍️ Animated Text | Love messages with beautiful text animations |
| 🎨 Elegant UI | Google Fonts for a polished romantic look |
| 📱 Cross-Platform | Works on Android, iOS, Web, Windows, macOS & Linux |

---

## 🛠️ Tech Stack

- **Framework:** Flutter (Dart)
- **Animations:** [`lottie`](https://pub.dev/packages/lottie) · [`animated_text_kit`](https://pub.dev/packages/animated_text_kit)
- **Media:** [`audioplayers`](https://pub.dev/packages/audioplayers) · [`video_player`](https://pub.dev/packages/video_player)
- **UI:** [`google_fonts`](https://pub.dev/packages/google_fonts) · Material Design
- **State Management:** [`provider`](https://pub.dev/packages/provider)

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK `^3.10.4`
- Dart SDK
- Android Studio / VS Code

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/010Ankushsharma/roseday.git

# 2. Navigate into the project
cd roseday

# 3. Install dependencies
flutter pub get

# 4. Run the app
flutter run
```

### Build for Release

```bash
# Android APK
flutter build apk --release

# iOS
flutter build ios --release

# Web
flutter build web
```

---

## 📁 Project Structure

```
roseday/
├── lib/                  # Main Dart source code
├── assets/
│   ├── image/
│   │   ├── rose.jpg      # Rose image asset
│   │   ├── rose2.jpg     # Rose image asset
│   │   └── khushi.mp4    # Heartfelt video
│   └── music/
│       └── romantic.mp3  # Background music
├── android/              # Android platform config
├── ios/                  # iOS platform config
├── web/                  # Web platform config
├── windows/              # Windows platform config
├── macos/                # macOS platform config
├── linux/                # Linux platform config
└── pubspec.yaml          # Dependencies & assets
```

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  google_fonts: ^8.0.1
  audioplayers: ^6.5.1
  animated_text_kit: ^4.3.0
  lottie: ^3.3.2
  provider: ^6.1.5+1
  video_player: ^2.10.1
  cupertino_icons: ^1.0.8
```

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 👨‍💻 Author

**Ankush Sharma**  
GitHub: [@010Ankushsharma](https://github.com/010Ankushsharma)

---

## 💖 Made with love for Valentine's Week

> *"A single rose can be my garden; a single friend, my world."*

---

<div align="center">
  ⭐ If you liked this project, please give it a star!
</div>
