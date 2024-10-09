import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/count_provider.dart';
class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.sizeOf(context).width;
    var mdh=MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Center(
        child: Consumer<CountProvider>(builder: (context, model, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(child: Text("${model.count}",style: TextStyle(fontSize: mdw*0.259),),onTap: (){model.decrem();},),
              _mybutton(mdw,mdh,onPressed: (){model.increm();})
            ],
          );
        },)
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
        child: InkWell(child: Text("Press Me",style: TextStyle(fontSize: mdw*0.05,color: Colors.white,fontWeight: FontWeight.w500),),),
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