import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String side;

  Result({required this.side});

  @override
  Widget build(BuildContext context) {
    var imageApp = AssetImage("images/$side.png");
    return Scaffold(
      appBar: AppBar(title: const Text("Result")),
      body: Center(
        child: Column(
              children: [Image(image: imageApp, height: 370, width: 240,),
              const Padding(padding: EdgeInsets.only(top: 12 )),
                 ],
        )
      ),
    );
  }
}