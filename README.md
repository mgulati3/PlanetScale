# 🌍 Planetary Weight Explorer

This is a SwiftUI-based iOS app that lets users explore how their weight changes across different celestial bodies — Earth, Moon, and Jupiter — using real gravitational differences. The app uses a `NavigationStack` with `NavigationPath` to handle navigation and data transfer between views dynamically.

---

## 🚀 Features

- ✅ Input your weight on Earth
- 🌕 Navigate to the Moon to:
  - See your weight on the Moon (1/6th of Earth’s gravity)
  - Display Earth weight and Moon weight
  - Message: “I feel much lighter!”
- 🪐 From Moon, navigate to Jupiter or back to Earth:
  - See weight on Jupiter (2.4x of Earth’s gravity)
  - Display Earth, Moon, and Jupiter weights
  - Message: “I feel heavier!”
- 🔄 Seamless navigation with context-aware messages:
  - “Coming from the moon” when returning to Earth from Moon
  - “Coming from the Jupiter” when returning to Earth from Jupiter
  - “Coming from Jupiter” when navigating back to Moon from Jupiter

---

## 🧪 Tech Stack

- **SwiftUI**
- **NavigationStack + NavigationPath**
- **MVVM Architecture**

---

## 📱 UI Design

Each planetary view displays:

- A relevant background or image (Earth, Moon, Jupiter)
- Input/output fields showing:
  - Weight on Earth
  - Weight on Moon (if applicable)
  - Weight on Jupiter (if applicable)
- A contextual message based on the transition
- Navigation buttons to other views (forward and backward)

The UI is intuitive and visually thematic to enhance learning and exploration.

---

## 🌌 Gravity Calculations

- **Moon Gravity:** 1/6 of Earth’s gravity
- **Jupiter Gravity:** 2.4× Earth’s gravity

> All weight conversions are based on this ratio:  
> `convertedWeight = earthWeight * gravityMultiplier`

---

## 🧭 Navigation 

✅ Implemented using `NavigationStack` with `NavigationPath` .  

---

## 🔧 Getting Started

1. Clone the repo  
   `git clone https://github.com/mgulati3/PlanetScale.git`
2. Open in Xcode  
   `PlanetaryWeightExplorer.xcodeproj`
3. Run the app on a simulator or your iOS device

---

## 📚 Learnings & Educational Value

This app is a fun way to:

- Understand SwiftUI's modern navigation system
- Practice passing data between views using `NavigationPath`
- Learn about gravity and physics in an interactive way

---

## 📄 License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.
