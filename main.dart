import 'package:flutter/material.dart';
import './profile.dart';
import 'publication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              profile(),
              publication(),
            ],
          ),
        ),
      ),
    );
  }
}
