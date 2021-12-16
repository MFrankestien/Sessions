import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          size: 70,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          size: 70,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "180",
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Container(
                        width: 300,
                        child: Slider(
                          min: 80,
                          max: 300,
                          onChanged: (value) {},
                          value: 120,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Expanded(
                  child: Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "180",
                          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {},
                              child: Icon(Icons.add),
                              mini: true,
                            ),
                            FloatingActionButton(
                              onPressed: () {},
                              child: Icon(Icons.remove),
                              mini: true,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
              Expanded(
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Age",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "180",
                        style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: () {},
                            child: Icon(Icons.add),
                            mini: true,
                          ),
                          FloatingActionButton(
                            onPressed: () {},
                            child: Icon(Icons.remove),
                            mini: true,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
              )),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight:Radius.circular(10)  ),
              color: Colors.red,
            ),
              width: double.infinity,

              child: MaterialButton(child: Text('Calc'), onPressed: () {}))
        ],
      ),
    );
  }
}
