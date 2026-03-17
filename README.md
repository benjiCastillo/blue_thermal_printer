# blue_thermal_printer

[![pub package](https://img.shields.io/pub/v/blue_thermal_printer.svg)](https://pub.dev/packages/blue_thermal_printer)
[![X Follow](https://img.shields.io/badge/X-@benji__ce-111111?logo=x&logoColor=white)](https://x.com/benji_ce)

Flutter plugin for connecting to Bluetooth thermal printers from Android.

This fork updates the package for recent Flutter and Dart versions and includes a demo flow for Zebra ZQ521 using CPCL.

## Platform Support

| Android | iOS | macOS | Web | Linux | Windows |
| :-----: | :--: | :---: | :-: | :---: | :-----: |
|   ✔️    |  stub |  stub |  ✘  |   ✘   |   ✘    |

## Repository

- Fork: `https://github.com/benjiCastillo/blue_thermal_printer`
- Issues: `https://github.com/benjiCastillo/blue_thermal_printer/issues`
- X: `https://x.com/benji_ce`

## Requirements

- Flutter `>=3.24.0`
- Dart `>=3.3.0 <4.0.0`
- Android device with Bluetooth
- For Zebra printers, test with a paired device such as `Zebra ZQ521`

## Installation

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  blue_thermal_printer: ^1.3.0
```

Then install packages:

```bash
flutter pub get
```

Import it in Dart:

```dart
import 'package:blue_thermal_printer/blue_thermal_printer.dart';
```

## Local Fork Usage

If you want to test this fork directly from a local checkout:

```yaml
dependencies:
  blue_thermal_printer:
    path: ../blue_thermal_printer
```

## How To Test The Example

1. Clone the fork:

```bash
git clone git@github.com:benjiCastillo/blue_thermal_printer.git
cd blue_thermal_printer
```

2. Install dependencies for the package and the example:

```bash
flutter pub get
cd example
flutter pub get
```

3. Verify your device:

```bash
flutter devices
```

4. Run the example on Android:

```bash
flutter run -d <device-id>
```

Example:

```bash
flutter run -d R9WNB0K0KKJ
```

5. In the example app:

- Tap `Refresh`
- Select the paired printer
- Tap `Connect`
- Tap `PRINT TEST`

## Zebra ZQ521 Notes

The demo in [`example/lib/testprint.dart`](/home/benji/Documents/projects/epsas/blue_thermal_printer/example/lib/testprint.dart) is currently tailored to Zebra ZQ521 with `CPCL`.

Important points:

- `ZPL` printed garbage on the tested channel
- `CPCL` printed correctly
- The sample receipt is built as a CPCL layout using `LABEL`, `TEXT`, `BOX`, `LINE`, `IL`, barcode, and `PRINT`

If you are using another printer brand, you may need to replace the example print flow with commands that match that printer language.

## Validation

To validate the package locally:

```bash
flutter analyze
flutter test
```

To validate the example:

```bash
cd example
flutter analyze
flutter test
```

## Notes

- The Android implementation is the primary supported target
- iOS and macOS plugin code remain minimal stubs in this fork
- On Android 12+, Bluetooth permissions must be granted
- For modern Flutter projects, use recent Android Gradle Plugin and SDK versions

## Credits

This project is based on the original `blue_thermal_printer` package and adapted in this fork for current Flutter/Dart compatibility and Zebra testing.
