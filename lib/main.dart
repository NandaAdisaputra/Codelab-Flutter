import 'package:flutter/material.dart';
import 'package:flutterbasic/button_screen.dart';
import 'package:flutterbasic/column_screen.dart';
import 'package:flutterbasic/dinamis_listview_screen.dart';
import 'package:flutterbasic/font_screen.dart';
import 'package:flutterbasic/image_screen.dart';
import 'package:flutterbasic/list_view.dart';
import 'package:flutterbasic/row_screen.dart';
import 'package:flutterbasic/textfield_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      // home: RowSreen(),
      initialRoute: '/dinamislistview',
      routes: {
        '/': (context) => MyHomePage(title: "Text"),
        '/column': (context) => ColumnScreen(),
        '/row': (context) => RowSreen(),
        '/image': (context) => ImageScreen(),
        '/field': (context) => FieldScreen(),
        '/button': (context) => ButtonScreen(),
        '/font': (context) => FontScreen(),
        '/listview': (context) => ListScreen(),
        '/dinamislistview': (context) => DinamisListScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Title"),
        leading: Text("kIRI"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}