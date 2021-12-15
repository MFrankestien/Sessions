
import 'package:flutter/material.dart';

class States extends StatefulWidget {
  @override
  _StatesState createState() => _StatesState();
}

class _StatesState extends State<States> {
  int Counter =1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Statefull Widget"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){

              setState(() {
                Counter++;
              });
              print("$Counter");
            }, child: Text("Plus")),
            Text("$Counter"),
            TextButton(onPressed: (){

              setState(() {
                Counter--;
              });
              print("$Counter");

            }, child: Text("minus")),
          ],
        ),
      ),
    );
  }
}
