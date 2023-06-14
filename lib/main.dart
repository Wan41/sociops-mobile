import 'package:flutter/material.dart';
import 'package:sociops/screen/fitur_donation/select_payment_screen.dart';
import 'package:sociops/screen/fitur_profile/edit_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sociops',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const EditProfileScreen(),
    );
  }
}
