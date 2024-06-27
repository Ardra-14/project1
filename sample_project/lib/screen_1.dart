import 'package:flutter/material.dart';
import 'package:sample_project/screen_2.dart';

class ScreenOne extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body: Center(
        child: ListView.separated(
          itemBuilder: (context, index){
            return ListTile(
              title: Text('PERSON $index'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ScreenTwo(name: 'PERSON $index');
                }));
              },
            );
          }, 
          separatorBuilder: (context, index){
            return Divider();
          }, 
          itemCount: 20)
      ),
    );
  }
}