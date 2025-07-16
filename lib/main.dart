import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shabahang/core/bloc/hydrated_bloc_storage.dart';
import 'package:shabahang/core/configs/theme/app_theme.dart';
import 'package:shabahang/presentation/choose_mode/bloc/theme_qbit.dart';
import 'package:shabahang/presentation/splash/pages/splash.dart';
 
void main() async {
  initHydratedStorage();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeQbit(),
      child: BlocBuilder<ThemeQbit, ThemeMode>(
        builder: (context, themeMode) {
          print('Building MaterialApp with theme: $themeMode');
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: themeMode,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            home: const SplashPage(),
          );
        },
      ),
    );
  }
}