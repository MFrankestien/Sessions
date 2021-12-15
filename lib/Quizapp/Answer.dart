import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final String answers;
  Function() x;
  Answer(this.x,this.answers);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      onPressed: (){x();}, child: Text(answers),);
  }
}
