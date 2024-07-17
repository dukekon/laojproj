import 'package:flutter/material.dart';
import 'package:laojproj/pages/home/category_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff4338CA)),
        useMaterial3: true,
      ),
      home: const CategoryPage(title: 'Demo'),
    );
  }
}
