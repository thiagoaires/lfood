import 'package:flutter/material.dart';
import 'package:lfood_app/src/features/dashboard/view/pages/dashboard_page.dart';
import 'package:lfood_app/src/features/home/view/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lfood App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardPage(),
    );
  }
}
