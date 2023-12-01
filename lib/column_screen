import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FTIK USM"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              )),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          color: Colors.amber,
          height: 100,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(child: Text('S1 Sistem Informasi')),
            Text(
              'S1 Teknik Informatika',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            Text('S1 Ilmu Komunikasi',
                style: TextStyle(fontStyle: FontStyle.italic)),
            Text(
              'S1 Pariwisata',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.cyan),
            )
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {},
          child: Icon(Icons.add),
        ));
  }
}
