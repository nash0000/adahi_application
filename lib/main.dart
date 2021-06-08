import 'package:adahi_application/screens/order_screen/order_screen.dart';
import 'package:adahi_application/screens/welcome_screen/welcome_screen.dart';
import 'package:adahi_application/shared/app_colors.dart';
import 'package:adahi_application/shared/app_helper_methods.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    initApp();
    return MaterialApp(
      title: 'Adahi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: kDefaultColor,
      ),
      home: WelcomeScreen(),
    );
  }
}
