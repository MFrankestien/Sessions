import 'package:flutter/material.dart';
import 'package:flutter_session1/TodoApp/THomeScreen.dart';
class NewTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: list.length,
      separatorBuilder: (context,index){
        return  Container(height: 1.0,color: Colors.grey,width: 60,);
      },

        itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            CircleAvatar
              (
              radius: 40,
              child: Text('${list[index]['id'].toString()}'),
            ),
            Column(
              children: [
                Text('${list[index]['title'].toString()}'),
                Text('${list[index]['date'].toString()}'),
              ],
            )
          ],
        ),
      );
    });
  }
}
