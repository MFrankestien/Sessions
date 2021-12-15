import 'package:flutter/material.dart';
import 'package:flutter_session1/Quizapp/Answer.dart';
import 'package:flutter_session1/Quizapp/Done.dart';
import 'Quizapp/Question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

Color w = Colors.white;
Color b = Colors.blue;
Color black = Colors.black;
Color wa=Colors.white;

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    questindex = 0;
  }

  final List<Map<String, Object>> quest = [

    {'question': 'What is your favorit color?',
      'answers': ['black', 'green', 'yellow']
    },
    {'question': 'What is your favorit team?',
      'answers': ['barca', 'milan', 'madrid']
    },
    {'question': 'What is your favorit Music?',
      'answers': ['Jaz', 'Rap',]
    },

  ];
  int questindex = 0;
  bool isSwitched = false;

  void answerfun() {
    print("answer clicked");
    print(questindex);

    setState(() {
      questindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: questindex < quest.length ? Scaffold(
        backgroundColor: w,
          appBar: AppBar(
          backgroundColor: b,
          title: Text("QuizzApp",style: TextStyle(color: wa),),
            actions: [
            Switch(value: isSwitched, onChanged:(value){
           setState(() {
             isSwitched=value;
           });
            if(isSwitched == true)
            setState(() {

            {
              wa=Colors.white;
              b=Colors.black;
            w=Colors.black;
            black=Colors.white;}
            });
            else{
            setState(() {
              wa=Colors.white;
            b=Colors.blue;
            w=Colors.white;
            black=Colors.black;

            });
            }})
            ],),
            body: Container(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Question(quest[questindex]['question'].toString()),

            ...(quest[questindex]['answers']as List<String>).map((a){
            return Answer(answerfun,a);
            }).toList()


            ],
            ),
            )

            ):Done() ,
            );
            }
          }

