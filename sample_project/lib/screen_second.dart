import 'package:flutter/material.dart';

class ScreenSecond extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 29, 70, 30),
        foregroundColor: Colors.white,
        title: Text('App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Value Found',
            style: TextStyle(fontSize: 50),
            )
          ],
                 ),
            )
    );
  }
}