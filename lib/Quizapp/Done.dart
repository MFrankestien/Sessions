import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Done extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QuizzApp"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(image: AssetImage('assets/images/medal_badge.png'),width: 200,height: 200,)
        ],
      ),
    );
  }
}
