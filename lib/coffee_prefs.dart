import 'package:flutter/material.dart';
import 'package:fluuter_weback/styled_body_text.dart';

class coffeeprefs extends StatefulWidget {
  const coffeeprefs({super.key});

  @override
  State<coffeeprefs> createState() => _coffeeprefsState();
}

class _coffeeprefsState extends State<coffeeprefs> {
  int strength=1;
  int sugar=1;
  void increment_coffee() {
    setState(() {
      
     strength = strength < 5 ? strength+1: 1; 
    });

    
  }

  void decrement_coffee() {
    setState(() {
    strength = strength > 1 ? strength-1: 1; 
      
    });
  }

  void increment_sugar() {
   setState(() {
      
     sugar = sugar < 5 ? sugar+1: 1; 
    });
}

  void decrement_sugar() {
     setState(() {
      
     sugar = sugar > 1 ? sugar-1: 0; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            styledbodytext("Strength : "),
            for(int i=0;i<strength;i++)
            Image.asset(
              'assets/img/coffee_bean.png',
              width: 25,
              color: Colors.blue[100],
              colorBlendMode: BlendMode.multiply,
            ),
            
            Expanded(child: SizedBox()),

            FilledButton(
              style: FilledButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: increment_coffee,
              child: Text('+', style: TextStyle(fontSize: 20)),
            ),
            SizedBox(width: 20),
            FilledButton(
              style: FilledButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: decrement_coffee,
              child: Text('-', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
        Row(
          children: [
            styledbodytext("Sugar : "),
            if(sugar==0)
              styledbodytext("No Sugar !!"),
            

              for(int i=0;i<sugar;i++)
              Image.asset(
              'assets/img/sugar_cube.png',
              width: 25,
              color: Colors.blue[100],
              colorBlendMode: BlendMode.multiply,
              ),
            
            Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: increment_sugar,
              child: Text('+', style: TextStyle(fontSize: 20)),
            ),
            SizedBox(width: 20),
            FilledButton(style: FilledButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: decrement_sugar,
              child: Text('-', style: TextStyle(fontSize: 20)),
            )
          ],
        ),
      ],
    );
  }
}
