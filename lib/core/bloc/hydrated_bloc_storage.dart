import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter/material.dart';

class MockStorage extends Mock implements Storage {}

late Storage hydratedStorage;

void initHydratedStorage() {
  WidgetsFlutterBinding.ensureInitialized();
  hydratedStorage = MockStorage();
  when(
    () => hydratedStorage.write(any(), any<dynamic>()),
  ).thenAnswer((_) async {});
  HydratedBloc.storage = hydratedStorage;
}