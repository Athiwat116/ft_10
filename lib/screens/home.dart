import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int count = 0;
  //var pages = <Widget>[];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage:
              NetworkImage('https://picsum.photos/100/100?random=1'),
            ),
          ),
          title: Text(
            'Athiwat',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Center(
          child: Text('$count',style: TextStyle(fontSize: 100,color: Colors.green),),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              onPressed: () {
                setState(() {
                  count = (count < 15) ? count + 1 : -15; // ถ้า count < 15 ให้เพิ่มขึ้น แต่ถ้าไม่ ให้วนกลับไป -15
                });
              },
              child: Icon(Icons.add),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              onPressed: () {
                setState(() {
                  count = (count > -15) ? count - 1 : 15; // ถ้า count > -15 ให้ลดลง แต่ถ้าไม่ ให้วนกลับไป 15
                });
              },
              child: Icon(Icons.remove),
            ),

          ],
        ),
      ),
    );
  }
}

