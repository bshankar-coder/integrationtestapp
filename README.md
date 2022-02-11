# integrationtestapp

Flutter Project with integration test example.

## Setup integration test

1. Add dependency in pubspec.yml
 dev_dependencies:
   integration_test:
     sdk: flutter
   flutter_test:
     sdk: flutter

2. Create "integration_test" directory if not present.
 integrationtestapp
 |
 |__integration_test
 |__lib

3. Initialize singleton service inside the test file inside main()
 ```
 IntegrationTestWidgetsFlutterBinding.ensureInitialized();
 ```

4. Use widgetTester to interact and test

## Run test

1. Connect a device or use Emulator/Simulator

2. To run a single test file
 ```
 flutter test integration_test\file_name.dart
 ```

3. To run all the test files
 ```
 flutter test integration_test
 ```


### Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
