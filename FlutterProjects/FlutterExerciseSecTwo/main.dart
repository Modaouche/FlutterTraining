import 'package:flutter/material.dart';
import 'coucou.dart';
import 'accueil.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _pages = false;

  void _test() {
    setState(() {
      _pages = true;
    });
    print(_pages);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Salut les gens'),
            backgroundColor: Colors.amber[700],
          ),
          body: !_pages ? Accueil(_test) : Coucou()),
    );
  }
}
