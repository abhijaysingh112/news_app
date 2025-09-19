
# 📰 Newsly

**Newsly** is a simple, modern, and minimalistic Flutter news application that fetches the latest headlines using the [NewsAPI](https://newsapi.org/).  
It provides a smooth reading experience with light/dark themes, search functionality, and article details view.


## ✨ Features

- 📌 **Top Headlines** from the US using NewsAPI  
- 🎨 **Clean & Minimal UI** with light and dark mode support  
- 🔍 **Search Functionality** to find articles by keywords  
- 🔄 **Pull-to-Refresh** for refreshing news feed  
- 📖 **Detailed Article View** with description and "Read Full Article" button  
- 🚀 **Splash Screen** with custom logo and branding  
- ❤️ *Made with Flutter & Provider for state management*  



## 📱 Screenshots


| Splash Screen | News List | Detail Screen |
|---------------|-----------|---------------|
|  <img width="500" height="1500" alt="splash_screen" src="https://github.com/user-attachments/assets/60437901-843a-4b94-a7c3-cfabb9f28467" /> ||<img width="1280" height="1500" alt="News_page" src="https://github.com/user-attachments/assets/266b507b-5619-44e2-b49d-6e09b1f29687" />|
| <img width="1280" height="1500" alt="Detail_screen" src="https://github.com/user-attachments/assets/898dca0c-80ae-4dd9-b332-3ebda4073160" /> |


---

## 🛠️ Tech Stack

- [Flutter](https://flutter.dev/) (Dart)  
- [Provider](https://pub.dev/packages/provider) (State Management)  
- [NewsAPI](https://newsapi.org/) (REST API for news)  
- [url_launcher](https://pub.dev/packages/url_launcher) (Open full articles in browser)  
- [http](https://pub.dev/packages/http) (API requests)  

---

## 📂 Project Structure

```

lib/
│── main.dart
│
├── models/
│   └── news\_model.dart
│
├── providers/
│   └── news\_provider.dart
│
├── services/
│   └── news\_api\_service.dart
│
├── pages/
│   ├── news\_page.dart
│   └── detail\_page.dart
│
└── widgets/
└── news\_tile.dart

````

---

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/your-username/newsly.git
cd newsly
````

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Add your NewsAPI key

* Get a free API key from [NewsAPI.org](https://newsapi.org/)
* Open `services/news_api_service.dart` and replace:

```dart
static const String apiKey = "YOUR_API_KEY";
```

with your API key.

### 4. Run the app

```bash
flutter run
```

## 💡 Slogan

**Newsly — Stay Ahead, Stay Informed.**

---

## 👨‍💻 Author

* **Your Name**
  📧 Email: abhijaysingh66@gmail.com
  🌐 GitHub: https://github.com/abhijaysingh112
