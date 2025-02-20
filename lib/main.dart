import 'package:flutter/material.dart';
import 'package:flutter_app/features/home_page/home_page.dart';
import 'package:flutter_app/styles/app_style.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(_PhonePeApp());
}

class _PhonePeApp extends StatelessWidget {
  const _PhonePeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PhonePe Flutter',
      theme: AppStyle.customLightTheme,
      home: HomePage(),
    );
  }
}
