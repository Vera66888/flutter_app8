import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Главное окно')),
        body: Center(child: Column(
          children: [RaisedButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen()));
          }, child: Text('Открыть второе окно')),
            RaisedButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ThreeScreen()));
            },
                child: Text('Открыть третье окно'))
          ],)));
  }
}

  class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(title: Text('Второе окно')),
  body: Center(child: RaisedButton(onPressed: (){
  Navigator.pop(context);
  }, child: Text('Назад'))),
  );
  }
  }

  class ThreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(title: Text('Третье окно')),
  body: Center(child: RaisedButton(onPressed: (){
  Navigator.pop(context);
  }, child: Text('Назад'))),
  );
  }
  }

  void main() {
  runApp(MaterialApp(
  home: MainScreen(),
  ));
  }