import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/consts/theme_data.dart';
import 'package:shopping_app/provider/dark_theme_provider.dart';
import 'package:shopping_app/screens/bottom_bar.dart';

void main() {
  runApp(MainApp());
}

// ignore: must_be_immutable
class MainApp extends StatelessWidget {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => themeChangeProvider),
      ],
      child: Consumer<DarkThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Styles.themeData(themeChangeProvider.darkTheme, context),
            home: const BottomBarScreen(),
          );
        },
      ),
    );
  }
}
