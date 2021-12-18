import 'package:flutter/material.dart';
class THomePage extends StatefulWidget {
  @override
  _THomePageState createState() => _THomePageState();
}

class _THomePageState extends State<THomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('TODO APP'),
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.menu_book),label: 'NewTask'),
          BottomNavigationBarItem(icon: Icon(Icons.done),label: 'DoneTasks'),
          BottomNavigationBarItem(icon: Icon(Icons.archive),label: 'ArchiveTask'),
      ],),
    );
  }
}
