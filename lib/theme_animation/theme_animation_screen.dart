import 'package:animation_app_mode/presentation/widgets/moon.dart';
import 'package:animation_app_mode/presentation/widgets/sizedbox20_example.dart';
import 'package:animation_app_mode/presentation/widgets/star.dart';
import 'package:animation_app_mode/presentation/widgets/sun.dart';
import 'package:animation_app_mode/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeAnimationScreen extends StatelessWidget {
  const ThemeAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: themeService.isDarkMode ? Colors.white60 : Colors.grey[850],
        //backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          title: const Text('Theme Animation'),
          centerTitle: true,
        ),
        body: Consumer<ThemeService>(builder: (context, themeService, child) {
          return Center(
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: Container(
                    height: 500,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: themeService.isDarkMode
                                ? Colors.black.withOpacity(.7)
                                : Colors.grey,
                            offset: const Offset(0, 5),
                            blurRadius: 10,
                            spreadRadius: 7)
                      ],
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                          colors: themeService.isDarkMode
                              ? const [
                                  Color.fromARGB(255, 187, 175, 207),
                                  Color.fromARGB(255, 112, 65, 154),
                                  Color.fromARGB(255, 47, 8, 98),
                                ]
                              : const [
                                  Color(0XDDFFFA66),
                                  Color(0XDDFFA057),
                                  Color(0XDD940B99),
                                ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 20,
                          right: 300,
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 200),
                              opacity: themeService.isDarkMode ? 1 : 0,
                              child: const Star()),
                        ),
                        Positioned(
                          top: 40,
                          right: 100,
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 200),
                              opacity: themeService.isDarkMode ? 1 : 0,
                              child: const Star()),
                        ),
                        Positioned(
                          top: 100,
                          right: 200,
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 200),
                              opacity: themeService.isDarkMode ? 1 : 0,
                              child: const Star()),
                        ),
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 600),
                          top: themeService.isDarkMode ? 130 : 100,
                          right: themeService.isDarkMode ? 100 : -40,
                          child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 300),
                              opacity: themeService.isDarkMode ? 1 : 0,
                              child: const Moon()),
                        ),
                        AnimatedPadding(
                          duration: const Duration(milliseconds: 200),
                          padding: EdgeInsets.only(
                              top: themeService.isDarkMode ? 110 : 20),
                          child: const Center(child: Sun()),
                        ),
                        // const Center(
                        //   child: Sun(),
                        // ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 250,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: themeService.isDarkMode
                                    ? Colors.grey[800]
                                    : Colors.white,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  themeService.isDarkMode
                                      ? 'To Dark?'
                                      : 'To Bright',
                                  style: const TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox20Example(),
                                Text(
                                  themeService.isDarkMode
                                      ? 'Let the sun rise?'
                                      : 'Let it be night',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      color: Theme.of(context).primaryColor,),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox20Example(),
                                Switch(
                                    value: themeService.isDarkMode,
                                    onChanged: (_) {
                                      themeService.toggleTheme();
                                    },
                                    focusColor: Theme.of(context).primaryColor,)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )));
        }));
  }
}
