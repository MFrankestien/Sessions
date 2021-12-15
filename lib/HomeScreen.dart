import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

   return Scaffold(
    appBar: AppBar(
     backgroundColor: Colors.red,
     centerTitle: true,
     leading: Icon(
         Icons.menu
     ) ,
     title: Text("First PAge") ,
     actions: [
       IconButton(icon:Icon(Icons.notification_important)  , onPressed:printnotification ),
       IconButton(onPressed:(){ print("Search got Clicked");}, icon: Icon(Icons.search))
     ],
   ),
     body:Column(
     children: [
       Container(
         decoration:BoxDecoration(
           borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(50),bottomEnd: Radius.circular(50)),

         ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
     width:250,
         child: Stack(
           alignment: Alignment.bottomCenter,
           children: [
             Image(
               width: 250,
                 height: 250,
                 fit: BoxFit.cover,
                 image:NetworkImage("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg"
                 ) ),
             Container(
               margin: EdgeInsetsDirectional.only(top: 10,bottom: 20),
               padding: EdgeInsetsDirectional.only(top: 10,bottom: 20),
               width: double.infinity,
               color: Colors.black.withOpacity(.5),
               child: Text(

                 "First Text",

                 textAlign: TextAlign.center,
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 30   )         ,
               ),
             ),
           ],
         ),
       ),



     ],

     )




   );
  }
  void printnotification(){
    print("Notification Clicked");
  }



}


