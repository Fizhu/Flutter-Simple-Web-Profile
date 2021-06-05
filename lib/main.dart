import 'package:flutter/material.dart';
import 'package:profile_web/ui/profile/profile.dart';

import 'data/raw/dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hafizh Anbiya',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: const Profile(),
    );
  }
}
