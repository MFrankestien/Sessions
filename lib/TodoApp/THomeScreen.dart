

import 'package:flutter/material.dart';
import 'package:flutter_session1/TodoApp/ArchiveTaasks.dart';
import 'package:flutter_session1/TodoApp/DoneTasks.dart';
import 'package:flutter_session1/TodoApp/NewTask.dart';
import 'package:sqflite/sqflite.dart';
import 'package:intl/intl.dart';


class THomePage extends StatefulWidget {
  @override
  _THomePageState createState() => _THomePageState();
}
List<Map> list=[];
class _THomePageState extends State<THomePage> {
  Database? database;


  var key = GlobalKey <ScaffoldState>();
  var fkey = GlobalKey <FormState>();
  var title = TextEditingController();
  var time = TextEditingController();
  var date = TextEditingController();

  List<Widget> screens = [
    NewTasks(),
    DoneTasks(),
    ArchiveTasks()
  ];
  List<String> appbarnames = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks'

  ];
  int screenindex = 0;

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
      key: key,
      body: screens[screenindex],
      floatingActionButton: FloatingActionButton(onPressed: () {
        key.currentState!.showBottomSheet((context) =>
            Container(
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Form(
                        key: fkey,
                        child: Column(

                          children: [
                            TextFormField(
                              controller: title,
                              validator: (value) {
                                if (value == null) {
                                  return 'Please enter some text';
                                }
                              },
                              onFieldSubmitted: (value) {
                                title.text = value;
                              },
                              decoration: InputDecoration(
                                labelText: "Title",
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.title),

                              ),

                            ),
                            SizedBox(height: 10,),
                            TextFormField(
                              keyboardType: TextInputType.datetime,
                              controller: time,
                              validator: (value) {
                                if (value == null) {
                                  return 'Please enter time';
                                }
                              },
                              onTap: () {
                                showTimePicker(
                                    context: context, initialTime: TimeOfDay.now())
                                    .then((value) =>
                                time.text = value!.format(context));
                              },

                              onChanged: (value) {
                                time.text = value;
                              },
                              decoration: InputDecoration(
                                labelText: "Title",
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.watch_later),

                              ),

                            ),
                            SizedBox(height: 10,),
                            TextFormField(
                              keyboardType: TextInputType.datetime,
                              controller: date,
                              validator: (value) {
                                if (value == null) {
                                  return 'Please enter Date';
                                }
                              },
                              onTap: () {
                                showDatePicker(context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime.parse('2022-05-03')).then((value) =>date.text=DateFormat.yMMMd().format(value!) );
                              },

                              onChanged: (value) {
                                date.text = value;
                              },
                              decoration: InputDecoration(
                                labelText: "Date",
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.calendar_today),

                              ),

                            ),

                          ],
                        ),
                      ),
                      ElevatedButton(onPressed: () {
                        if (fkey.currentState!.validate()) {
                          insertdata(title: title.text,time: time.text,date: date.text);
                          print('Valid');
                          Navigator.pop(context);
                        }
                      }, child: Text('ADD')),
                    ],
                  ),
                ),
              ),

            )).close();
      }, child: Icon(Icons.add),),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: screenindex,
        onTap: (index) {
          setState(() {
            screenindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book), label: 'NewTask'),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'DoneTasks'),
          BottomNavigationBarItem(
              icon: Icon(Icons.archive), label: 'ArchiveTask'),
        ],),
    );
  }

  void createDataBase() async {
    database = await openDatabase(
        'todo.db',
        version: 1,
        onCreate: (database, version) {
          print('database created');
          database.execute(
              'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT ,date TEXT,time TEXT,type TEXT)')
              .then((value) => print("Table created "));
        },
        onOpen: (database) {
          RetriveRaws(database).then((value) {list=value;
          print(list[0]);
          print('database opend');
          });

        }
    );
  }
   Future <List<Map>> RetriveRaws(database)  async {
   return await database.rawQuery('SELECT * FROM tasks');
  }
  Future? insertdata({required String title,required String time,required String date}) {
    database!.transaction((txn) async {
      return await txn.rawInsert(
          'INSERT INTO tasks(title,date,time,type) Values("$title","$time","$date","new")')
          .then((value) => print('added'));

    });
       return null;
  }

}


