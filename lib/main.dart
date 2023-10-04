import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:counter_app_with_state/counter_provider.dart';
import 'package:counter_app_with_state/counter_with_state.dart';
// import 'package:counter_app/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.purple),
        home: const CounterWithState());
  }
}
