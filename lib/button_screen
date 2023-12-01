import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});
  @override
  State<ButtonScreen> createState() => _FirstScreenState();
}
class _FirstScreenState extends State<ButtonScreen> {
  String? progdi;

  @override
  Widget build(BuildContext context) {
    String? language;
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
          IconButton(onPressed: (){}, icon: Icon(Icons.visibility)),
          DropdownButton<String>(
             items: const <DropdownMenuItem<String>>[
               DropdownMenuItem<String>(
                 value: 'S1 Teknik Informatika',
                 child: Text('S1 Teknik Informatika'),
               ),
               DropdownMenuItem<String>(
                 value: 'S1 Sistem Informasi',
                 child: Text('S1 Sistem Informasi'),
               ),
               DropdownMenuItem<String>(
                 value: 'S1 Ilmu Komunikasi',
                 child: Text('S1 Ilmu Komunikasi'),
               ),
               DropdownMenuItem<String>(
                 value: 'S1 Pariwisata',
                 child: Text('S1 Pariwisata'),
               ),
             ],
             value: progdi,
             hint: const Text('Pilih Program Studi'),
             onChanged: (String? value) {
               setState(() {
                 progdi = value;
               });
               },
           ),
        ],),
        
        SizedBox(height: 100,),
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
