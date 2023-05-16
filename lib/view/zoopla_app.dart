import 'package:flutter/material.dart';

import 'home_page.dart';

class ZooplaApp extends StatelessWidget {
  const ZooplaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
