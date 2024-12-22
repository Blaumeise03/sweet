import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart' show FlutterError, kDebugMode;

import 'package:sweet/util/platform_helper.dart';

Future<void> initializeFirebase() async {
  if (PlatformHelper.hasFirebase) {
    // ToDo: Remove all firebase stuff
    print("Firebase has been removed from the project");
  }
}

Future<void> logEvent({
  required String name,
  Map<String, Object>? parameters,
}) {
  print('Event: $name, parameters: $parameters');
  return Future.value();
}

void printToLog(String message) {
  print(message);
}

void reportError(
  dynamic exception,
  StackTrace? stackTrace, {
  Iterable<DiagnosticsNode> info = const [],
}) {
  print('Exception: $exception');
  print('Stacktrace: $stackTrace');
}
