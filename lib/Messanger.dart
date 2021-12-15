import 'package:flutter/material.dart';

class Messanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/149/149071.png'),
              ),
            SizedBox(width: 10,),
            Text("Chat",
              style:TextStyle(
                color: Colors.black87
              ) ,
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: Colors.black87,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.black87,))
        ],
        ),

      body:Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              padding:EdgeInsets.all(10),

              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 20,),
                  Text("Search")

                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 100,

              child: ListView.separated(
                separatorBuilder: (context,index)=>SizedBox(width:20),
                itemBuilder:(context,index){
                return buildstoryitem();

              },
                scrollDirection: Axis.horizontal,
              itemCount: 5,),
            ),
            SizedBox(height: 15),
            


          ],


            )



        ),
      );
      


  }

  Widget buildChatItem() => Row(
    children: [
      CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/149/149071.png'),
      ),
      SizedBox(width: 10,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Mohammed Khaled",style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("fksdlksg'gkfdsfsdfsds"),
              SizedBox(width: 50,),
              Text("10 am")
            ],
          )
        ],
      )

    ],

  );
  Widget buildstoryitem()=>Row(
    children: [
      Column(
        children: [
          Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/149/149071.png'),
                ),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,),
              ]),
          Text("Mohamed"),
        ],
      ),

    ],
  );
}
