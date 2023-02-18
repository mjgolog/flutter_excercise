
import 'package:flutter/material.dart';
import 'package:ormoc_app/views/login.dart';

void main() {
  runApp(const OrmocApp());
}
class OrmocApp extends StatelessWidget {
  const OrmocApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}