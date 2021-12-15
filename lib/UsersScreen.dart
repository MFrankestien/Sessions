import 'package:flutter/material.dart';

class userModel{
  final int id;
   final String n;
  final String des;

  userModel({required this.id,required this.n,required this.des});

}

class UsersScreen extends StatelessWidget {
  List<userModel> users =[
    userModel(id: 1, n: "ahmed", des: "Hi Ahmed"),
    userModel(id: 2, n: "ali", des: "Hi ali"),
    userModel(id: 3, n: "assem", des: "Hi assem"),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(itemBuilder: (context,index){
          return buildusers(users[index]);
        },
            separatorBuilder: (context,index)=>SizedBox(height: 15,), itemCount: users.length)

      ),
    );
  }
  Widget buildusers (userModel user){
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          child: Text(user.id.toString()),
          backgroundColor: Colors.blue,
        ),
        SizedBox(width: 20,),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            Text(user.n),
            SizedBox(height: 10,),
            Text(user.des)

          ],)
      ],
    );
  }
}
