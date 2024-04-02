import 'package:beework_coworking/models/main_theme.dart';
import 'package:beework_coworking/providers/trolly_provider.dart';
import 'package:beework_coworking/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TrollyProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MainTheme().mainTheme(),
        home: const HomePage(),
      ),
    );
  }
}
