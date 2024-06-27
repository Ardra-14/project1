import 'package:flutter/material.dart';
import 'package:sample_project/screen_second.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenFirst extends StatelessWidget{

  final _textController = TextEditingController(); // to get the value from the textfield

  @override
  Widget build(BuildContext context){
    getSavedData(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextFormField(
              controller: _textController,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: (){
                    saveDataToStorage();
                
                  }, 
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.black),
                    foregroundColor: WidgetStateProperty.all(Colors.white)

                  ),
                  child: Text('Save Value',
                  style: TextStyle(fontSize: 30),
                  )
                  ),
              ),
            ),
          ],)
      ),
    );
  }


Future <void> saveDataToStorage() async
{
  print(_textController);


//shared preference

final sharedPrefs = await SharedPreferences.getInstance();

//value saving

await sharedPrefs.setString('saved_value', _textController.text);

}

Future <void> getSavedData(BuildContext context) async {
final sharedPrefs = await SharedPreferences.getInstance();
final savedValue = sharedPrefs.getString('saved_value');
if(savedValue != null){
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return ScreenSecond();
  }));
}
}
}