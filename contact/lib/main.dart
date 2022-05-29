import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: (){
            setState(() {
              a++;
            });
          },
        ),
        appBar: AppBar(title: Text('Eco Fix Car')),
        body: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: double.infinity, height: 50,
            padding: EdgeInsets.fromLTRB(30,10,10,10),
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              border: Border.all(color: Colors.red)
            ),

            child: Text('이곳은 바텁앱바 자리입니다.'),
          ),
        )

      ),
    );
  }
}
