import 'package:flutter/material.dart';
import 'package:fluuter_weback/home.dart';


void main() {
  runApp( MaterialApp(
    home: Home(),

  ));
}

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SandBox",),backgroundColor: Colors.red[400],centerTitle: true,),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
       children: [
         Container(
          width: 100,
          height:100,
          color: Colors.red[100],
          
         padding: EdgeInsets.all(20),
         child: Text("One",),
         
        ),
         Container(
          width: 100,
          height:100,
          color: Colors.red[200],
          
         padding: EdgeInsets.all(20),
         child: Text("Two",),
         
        ),
         Container(
          width: 100,
          height:100,
          color: Colors.red[300],
          
         padding: EdgeInsets.all(20),
         child: Text("Three",),
         
        )
       ]
      )
    );
  }
}

