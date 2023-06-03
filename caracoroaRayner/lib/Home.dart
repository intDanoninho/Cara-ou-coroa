import 'dart:math';
import 'Result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> sides=["cara","coroa"];
  void _play(){
    int i = Random().nextInt(sides.length);
    print("Resultado: ${sides[i]}");

    Navigator.push(context,
     MaterialPageRoute(builder: (context)=>Result(side: sides[i])));

  }
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("heads or tails")),
      body: Center(
        child: Column(
              children: [Image.asset("images/default.jpg", width: 350, height: 300,),
              const Padding(padding: EdgeInsets.only(top: 12 )),
              TextButton(
                onPressed: _play,
                child: const Text("Play", style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold,
    ),))
                
                 ],
        )
      ),
    );
  }
}
