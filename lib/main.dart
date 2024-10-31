import 'package:animation_app_mode/services/theme_service.dart';
import 'package:animation_app_mode/theme.dart';
import 'package:animation_app_mode/theme_animation/theme_animation_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //return const DefultCode();
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
        themeMode: themeService.isDarkMode ? ThemeMode.dark : ThemeMode.light,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        //DefultTheme(),
        //home: const WidgetExamplesScreen()
        //home: const CounterExample()
        //home: const ListviewExample()
        home: const ThemeAnimationScreen(),
        
      );
    });
  }
}