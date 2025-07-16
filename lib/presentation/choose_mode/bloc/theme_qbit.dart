import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:flutter/material.dart';

class ThemeQbit extends HydratedCubit<ThemeMode> {
  ThemeQbit() : super(ThemeMode.system) {
    print('Initial state loaded: $state'); 
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    print('==== LOADING FROM STORAGE ====');
    print('Raw JSON data: $json');// Debug print
    try {
      switch (json['themeMode'] as String) {
        case 'light':
          return ThemeMode.light;
        case 'dark':
          return ThemeMode.dark;
        default:
          return ThemeMode.system;
      }
    } catch (e) {
      print('Error loading theme: $e');
      return ThemeMode.system;
    }
  }

  @override
  Map<String, dynamic> toJson(ThemeMode state) {
    print('==== SAVING TO STORAGE ====');
    print('Saving theme to JSON: $state');
    return {'themeMode': state.toString().split('.').last};
  }

  void updateTheme(ThemeMode themeMode) {
    print('Updating theme to: $themeMode');
    emit(themeMode);
  }
}