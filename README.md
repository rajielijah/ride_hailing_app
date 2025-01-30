# Ride Hailing App

## Overview
This application demonstrates core functionalities typically found in a ride-hailing app. GetX is used for state management, dependency injection, and route management.

## Getting Started

### Prerequisites
Ensure you have the following installed:
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart](https://dart.dev/get-dart)
- [Android Studio](https://developer.android.com/studio) / [Xcode](https://developer.apple.com/xcode/) (for emulator/simulator)

### Installation
Clone the repository:

```sh
git clone https://github.com/rajielijah/ride_hailing_app.git
cd ride_hailing_app
```

Get dependencies:

```sh
flutter pub get
```

## Running the App

### For Android:
```sh
flutter run
```

### For iOS:
Ensure you have a Mac with Xcode installed, then run:
```sh
flutter run -d ios
```

## Architecture

- **State Management:** [GetX](https://pub.dev/packages/get)
- **Networking:** HTTPS for API calls

## Third-Party Libraries

The following dependencies are used in `pubspec.yaml`:

- [`http`](https://pub.dev/packages/http) - HTTP client for API communication
- [`google_maps_flutter`](https://pub.dev/packages/google_maps_flutter) - Google Maps integration



