import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/count_provider.dart';
import 'app.dart';
void main()
{
  runApp(Main());
}
class Main extends StatelessWidget {
  Main({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CountProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: App(),
      ),
    );
  }
}
