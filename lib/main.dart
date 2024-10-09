import 'package:flutter/material.dart';

import 'app.dart';
void main()
{
  runApp(Main());
}
class Main extends StatelessWidget {
  Main({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}
