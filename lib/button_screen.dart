import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BUTTON SCREEN"), backgroundColor: Colors.amber,),
      body: Column(
        children: [
        Column(
         children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              onPressed: (){}, child: Text("Simpan", style: TextStyle(color: Colors.white),)),
          OutlinedButton(onPressed: (){}, child: Text("Batal", style: TextStyle(color: Colors.blue),)),
          TextButton(onPressed: (){}, child: Text("Lihat Selengkapnya", style: TextStyle(color: Colors.blue),)),
          IconButton(onPressed: (){}, icon: Icon(Icons.visibility))
        ],),
        
        SizedBox(height: 150,),
        Column(children: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
            alignment: Alignment.center,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                onPressed: (){}, child: Text("Simpan", style: TextStyle(color: Colors.white),)),
          ),
          Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
              child: OutlinedButton(onPressed: (){}, child: Text("Batal", style: TextStyle(color: Colors.blue),))),
          Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
              child: TextButton(onPressed: (){}, child: Text("Lihat Selengkapnya", style: TextStyle(color: Colors.blue),))),
          Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.visibility)))
        ],),
      ],)
    );
  }
}