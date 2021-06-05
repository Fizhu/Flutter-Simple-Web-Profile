import 'package:flutter/material.dart';
import 'package:profile_web/ui/profile/profile.dart';
import 'package:profile_web/utils/size_config.dart';

import 'data/raw/dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      title: 'M. Hafizh Anbiya\'s Profile',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: Profile(DummyData.getDataUser()),
    );
  }
}
