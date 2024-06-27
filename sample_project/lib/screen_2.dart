import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget{
  final String name;

  ScreenTwo({required this.name});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 29, 70, 30),
        foregroundColor: Colors.white,
        title: Text(name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: (){
                   Navigator.of(context).pop();
                },
                 style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                ),
                 child: Text('Go Back')
                 ),
            )
          ],
          ),
      ),
    );
  }
}