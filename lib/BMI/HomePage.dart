
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(color: Colors.red,child: Row(children: [],),),
          Container(color: Colors.green,child: Row(children: [],),),
          Container(color: Colors.blue,child: Row(children: [],),),
          Container(color: Colors.red,child: MaterialButton(onPressed: (){})),

        ],
      ),
    );
  }
}
