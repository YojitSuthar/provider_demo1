import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/count_dart.dart';
import 'screens/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Activate the provider
    return ChangeNotifierProvider(
      create: (context) => Count(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
