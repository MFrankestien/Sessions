import 'package:flutter/material.dart';
import 'package:flutter_session1/main.dart';
class Question extends StatelessWidget {
  final String question;

  Question( this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(15) ,
      width: double.infinity,
      child: Text(question,style:
      TextStyle(fontSize: 30,fontWeight: FontWeight.w600, color: black),),
    );
  }
}
