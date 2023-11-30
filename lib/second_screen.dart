import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String message;
  const SecondScreen(this.message,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(message, style: TextStyle(fontFamily: 'Helvetica', fontSize: 24, color: Colors.blue),),
              SizedBox(height: 16,),
           OutlinedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Kembali", style: TextStyle(color: Colors.blue),)),
          ],)),
      ),
    );
  }
}