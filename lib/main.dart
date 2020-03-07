import 'package:flutter/material.dart';
import './screens/shift_cipher.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new ShiftCipher(),
      debugShowCheckedModeBanner: false,
    );
  }
}
