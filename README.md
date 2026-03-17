# blue_thermal_printer_benji

[![X Follow](https://img.shields.io/badge/X-@benji__ce-111111?logo=x&logoColor=white)](https://x.com/benji_ce)

Flutter plugin for connecting to Bluetooth thermal printers from Android.

This is a fork prepared for modern Flutter/Dart projects and future publication under the package name `blue_thermal_printer_benji`.

## Current Status

This package is **not published on pub.dev yet**.

For now, use it in one of these ways:

- from a local path
- from your Git repository

## Repository

- Fork: `https://github.com/benjiCastillo/blue_thermal_printer`
- Issues: `https://github.com/benjiCastillo/blue_thermal_printer/issues`
- X: `https://x.com/benji_ce`

## Requirements

- Flutter `>=3.24.0`
- Dart `>=3.3.0 <4.0.0`
- Android device with Bluetooth

## Install From Local Path

In your app `pubspec.yaml`:

```yaml
dependencies:
  blue_thermal_printer_benji:
    path: ../blue_thermal_printer
```

Then run:

```bash
flutter pub get
```

Import it with:

```dart
import 'package:blue_thermal_printer_benji/blue_thermal_printer.dart';
```

## Install From Git

In your app `pubspec.yaml`:

```yaml
dependencies:
  blue_thermal_printer_benji:
    git:
      url: git@github.com:benjiCastillo/blue_thermal_printer.git
      ref: main
```

Or with HTTPS:

```yaml
dependencies:
  blue_thermal_printer_benji:
    git:
      url: https://github.com/benjiCastillo/blue_thermal_printer.git
      ref: main
```

Then run:

```bash
flutter pub get
```

## Example: How To Test This Fork

1. Clone the repository:

```bash
git clone git@github.com:benjiCastillo/blue_thermal_printer.git
cd blue_thermal_printer
```

2. Install dependencies:

```bash
flutter pub get
cd example
flutter pub get
```

3. Check devices:

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

5. In the app:

- tap `Refresh`
- select the paired printer
- tap `Connect`
- tap `PRINT TEST`

## Zebra ZQ521 Notes

The example currently contains a `CPCL` demo flow tailored to Zebra `ZQ521`.

Observed behavior during testing:

- `ZPL` printed garbage on the tested Bluetooth channel
- `CPCL` printed correctly

The demo receipt in the example uses:

- `LABEL`
- `TEXT`
- `BOX`
- `LINE`
- `IL`
- barcode commands
- `PRINT`

If you use another printer family, you will probably need to adapt the command language.

## Validate Locally

From the package root:

```bash
flutter analyze
flutter test
```

For the example:

```bash
cd example
flutter analyze
flutter test
```

## Notes

- Android is the primary supported target
- iOS and macOS remain minimal stubs
- Android 12+ requires Bluetooth permissions
- This fork is prepared for future publication, but it is not public on pub.dev yet

## Future Publish

When you decide to publish it, the package name is already prepared as:

```yaml
name: blue_thermal_printer_benji
```

Recommended future flow:

```bash
flutter pub publish --dry-run
flutter pub publish
```
