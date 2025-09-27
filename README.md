# Flutter Widgets Playground 🚀

A learning and reference repository for exploring **Flutter widgets** in action.  
This project is structured to grow over time — with examples of Flutter’s core widgets, organized by their categories (like the official Flutter Widget Catalog).  

---

## 📖 Overview

Flutter provides a huge collection of widgets, but the official docs can sometimes feel too abstract or minimal.  
This repository aims to bridge that gap by providing:

- **Hands-on examples** for individual widgets.
- **Organized structure** (folders by category).
- **Readable explanations** and usage scenarios.
- A growing **reference point** for developers who want to understand how to use widgets in real projects.

The goal is to make this repo a **go-to resource** for beginners and experienced Flutter developers alike.

---

## 📂 Project Structure

Each category of widgets has its own folder, and inside it you’ll find examples for specific widgets.  
This mirrors the [Flutter Widget Catalog](https://docs.flutter.dev/development/ui/widgets).

Example structure:
```
widgets_playground/
│
├── Accessibility/
│ ├── semantics_example.dart
│ ├── exclude_semantics_example.dart
│ ├── merge_semantics_example.dart
│ └── ...
│
├── Assets/
│ ├── assetbundle_example.dart
│ └── ...
│
├── Images/
│ ├── rawimage_example.dart
│ └── ...
│
└── README.md
```
---

## 🧩 Widgets Covered So Far

### **Accessibility**
- [`Semantics`](https://api.flutter.dev/flutter/widgets/Semantics-class.html) – Adds semantic meaning for accessibility tools.
- [`ExcludeSemantics`](https://api.flutter.dev/flutter/widgets/ExcludeSemantics-class.html) – Removes subtree semantics to avoid redundancy.
- [`MergeSemantics`](https://api.flutter.dev/flutter/widgets/MergeSemantics-class.html) – Merges semantics of multiple widgets into a single node.

### **Assets & Resources**
- [`AssetBundle`](https://api.flutter.dev/flutter/services/AssetBundle-class.html) – Loads resources like images, text, or JSON asynchronously.

### **Images**
- [`RawImage`](https://api.flutter.dev/flutter/widgets/RawImage-class.html) – Directly paints a `dart:ui.Image`.

---

## 🔧 How It Works

- Each widget is implemented in a **minimal example app** (standalone `main.dart` file).
- Examples are **simple, focused, and runnable**, so you can quickly test them with `flutter run`.
- Code includes **inline comments** for better understanding.
- Widgets are grouped in folders by **catalog category** for easy navigation.

---

## 🌟 Why This Repo Is Important

- Acts as a **living documentation** for Flutter widgets.
- Provides **real-world examples** where Flutter docs may be too brief.
- Helps beginners **understand not just how to use a widget, but *why***.
- Designed to be **extendable** — more widgets will be added over time.

---

## 🚀 Future Updates

This repository will continue to grow. Planned improvements include:

- Adding more categories (Layout, Animation, Input, etc.)
- Expanding examples for advanced widgets.
- Writing **README.md per folder** with explanations.
- Adding screenshots or GIFs for visual clarity.

---

## 🤝 Contribution

Contributions are welcome! 🎉  
If you’d like to add new widgets or improve examples:

1. Fork this repo  
2. Create a new branch (`git checkout -b add-new-widget`)  
3. Add your widget example under the right category folder  
4. Update this `README.md`  
5. Open a Pull Request 🚀  

---

## 📜 License

This project is licensed under the **MIT License**.  
Feel free to use, share, and expand it.  

---

### 💡 Final Note
This repo is meant to be a **reference and learning playground**.  
Explore, break things, fix them, and learn — because that’s the best way to master Flutter. 🐦✨

