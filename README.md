# 🌤️ Minimalist Weather UI - Flutter Demo

A clean, modern, and responsive weather UI demo created with Flutter. This application demonstrates basic UI/UX practices including city selection, weather visualization using icons, and dynamic background transitions based on day/night modes — all using **fake weather data** (no API).

---

## 📱 Preview

> ![App Screenshot Placeholder](assets/images/preview.png)  
> *Note: Replace with actual screenshot from your emulator or device.*

---

## 🚀 Features

- 🌇 Day/Night dynamic background (based on fake time)
- 🌆 City selector with live UI updates
- 🌤️ Weather visualization using icons and temperatures
- 🧱 Stack, Opacity, AnimatedSwitcher, ClipRRect UI techniques
- 💡 Responsive design with soft transitions and minimalist feel

---

## 🛠️ Technologies Used

- Flutter SDK
- Dart language
- Material 3 (M3) design

---

## 📁 Folder Structure

```bash
minimalist_weather_ui/
├── lib/
│   ├── main.dart
│   └── weather_home_page.dart
├── assets/
│   └── images/
│       ├── weather_bg.jpg
│       ├── day_bg.jpg
│       └── night_bg.jpg
├── pubspec.yaml
└── README.md
```

---

## 📦 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/yourusername/minimalist_weather_ui.git
cd minimalist_weather_ui
```

### 2. Install dependencies
```bash
flutter pub get
```

### 3. Add Assets
Make sure you have the following images in `assets/images/`:
- `day_bg.jpg`
- `night_bg.jpg`
- `weather_bg.jpg`

Update `pubspec.yaml`:
```yaml
flutter:
  assets:
    - assets/images/weather_bg.jpg
    - assets/images/day_bg.jpg
    - assets/images/night_bg.jpg
```

### 4. Run the app
```bash
flutter run
```

---

## 🔧 To Do / Future Improvements

- 🌐 Real-time API integration (e.g., OpenWeatherMap)
- 🌍 Location-based auto selection
- 🌈 Weather animations (rain, snow, sunburst)
- 🕓 Time-of-day based background transitions

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Author

Developed by [Your Name]  
[YourWebsite.com](https://yourwebsite.com) | [LinkedIn](https://linkedin.com/in/yourprofile) | [GitHub](https://github.com/yourusername)

---

Enjoy building beautiful weather experiences with Flutter! ☀️