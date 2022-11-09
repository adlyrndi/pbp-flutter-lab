import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  String result = 'GENAP';
  bool isShow = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
      isShow = true;
    });
  }

  void _decrementCounter() {
    setState(() {
      if(_counter < 2){
        isShow = false;
        _counter = 0;
      }else{
        _counter--;
        isShow = true;
      }
    });
  }
  Text changeColor(){
    if(_counter % 2 == 1){
      result = 'GANJIL';
      return Text (
        result,
        style: const TextStyle(color: Colors.blue),
      );
    }else{
      result = 'GENAP';
      return Text (
        result,
        style: const TextStyle(color: Colors.red),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: 
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child:Container(
                  height:100,
                  width:300,
                  child: Column(
                    children: <Widget>[
                      changeColor(),
                      Text(
                        '$_counter',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ]
                  )
                )
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child:Container(
                  height:70,
                  width:70,
                  child: Visibility (
                    visible: isShow,
                    child: FloatingActionButton(
                        onPressed: () {
                          _decrementCounter();
                          changeColor();
                        },
                        tooltip: 'Decrement',
                        child: const Icon(Icons.remove),
                    ),
                  )
                )
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height:70,
                  width:70,
                  child: FloatingActionButton(
                        onPressed: () {
                          _incrementCounter();
                          changeColor();
                        },
                        tooltip: 'Increment',
                        child: const Icon(Icons.add),
                        )
                )
              ),
            ],
          )
      ),
    );
  }
}