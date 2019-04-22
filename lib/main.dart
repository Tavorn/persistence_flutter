import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:io';
import 'dart:async';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persisting Data Part 1", style: TextStyle(
          fontSize: 20.0,
        )),
      ),
    );
  }
}

Future<String> get _localPath async{
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}