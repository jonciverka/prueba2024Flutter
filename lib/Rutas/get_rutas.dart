import 'package:flutter/material.dart';
import 'package:prueba2024/Pages/splash_page.dart';

Map<String, WidgetBuilder> getRutas() {
  return <String, WidgetBuilder>{
    '/': (context) => const SplashScreen(),
  };
}
