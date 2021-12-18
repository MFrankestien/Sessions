import 'package:flutter/material.dart';
import 'package:flutter_session1/TodoApp/ArchiveTaasks.dart';
import 'package:flutter_session1/TodoApp/DoneTasks.dart';
import 'package:flutter_session1/TodoApp/NewTask.dart';
import 'package:sqflite/sqflite.dart';
class THomePage extends StatefulWidget {
  @override
  _THomePageState createState() => _THomePageState();
}

class _THomePageState extends State<THomePage> {
  Database? database ;
  List<Widget> screens= [
    NewTasks(),
  DoneTasks(),
    ArchiveTasks()
  ];
  List<String> appbarnames =[
    'New Tasks',
    'Done Tasks',
    'Archived Tasks'

  ];
  int screenindex=0;

  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    createDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text(appbarnames[screenindex]),
      ),
      body: screens[screenindex],
      floatingActionButton: FloatingActionButton(onPressed: (){insertdata();},child: Icon(Icons.add),),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: screenindex,
        onTap: (index){

          setState(() {
            screenindex=index;
          });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.menu_book),label: 'NewTask'),
          BottomNavigationBarItem(icon: Icon(Icons.done),label: 'DoneTasks'),
          BottomNavigationBarItem(icon: Icon(Icons.archive),label: 'ArchiveTask'),
      ],),
    );
  }
  void createDataBase() async{

    database = await openDatabase(
        'todo.db',
        version: 1,
        onCreate: (database,version){
          print('database created');
          database.execute('CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT ,date TEXT,time TEXT,type TEXT)').then((value) => print("Table created "));
        },
        onOpen: (database){print('database opend');}
    );
  }
  void insertdata(){
    database!.transaction((txn) async {
      await txn.rawInsert('INSERT INTO tasks(title,date,time,type) Values("first task","2020","10","new")').then((value) => print('added'));
    }
    );}

  }


