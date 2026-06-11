import 'package:flutter/material.dart';
import 'package:fluuter_weback/coffee_prefs.dart';
import 'package:fluuter_weback/styled_body_text.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const styledbodytext("First AppBar"),
        backgroundColor: Colors.blue[300],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [
          Container(
            
            padding: EdgeInsets.all(20),
            color: Colors.blue[200],
            
            child:Text("How i like my coffee",style:TextStyle(fontSize: 20),)
          ),
          Container(
           
            padding: EdgeInsets.all(20),
            color: Colors.blue[100],
            
            child: const coffeeprefs(),
          ),
          Expanded(child: 
          Image.asset('assets/img/coffee_bg.jpg',
          fit:BoxFit.fitWidth,
          alignment: Alignment.bottomCenter,)
          )
          
        ],
      )
    );

  }
}