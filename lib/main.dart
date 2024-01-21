import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qidian/app/app.dart';

void main() {
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
  );
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  runApp(const App());
}
