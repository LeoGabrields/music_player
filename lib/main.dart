import 'package:flutter/material.dart';
import 'package:player_music/constants/request_permission.dart';
import 'package:player_music/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RequestPermission.call();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}