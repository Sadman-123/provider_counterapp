import 'package:flutter/material.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.sizeOf(context).width;
    var mdh=MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("0",style: TextStyle(fontSize: mdw*0.25),),
            _mybutton(mdw,mdh,onPressed: (){})
          ],
        ),
      ),
    );
  }
}
Widget _mybutton(double mdw,double mdh, {required VoidCallback onPressed})
{
  return InkWell(
    onTap: onPressed,
    child: Container(
      child: Center(
        child: Text("Press Me",style: TextStyle(fontSize: mdw*0.05,color: Colors.white,fontWeight: FontWeight.w700),),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade600,
            Colors.blueAccent.shade200,
            Colors.blueAccent.shade200
          ]
        )
      ),
      height: mdh*0.075,
      width: mdw*0.55,
    ),
  );
}