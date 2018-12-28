import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Study',
        home: Scaffold(
            appBar: AppBar(
              title: Text('ListView Demo'),
            ),
            body: ListViewDemo()));
  }
}

class ListViewDemo extends StatelessWidget {
  final _items = List<String>.generate(1000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 1000,
        itemBuilder: (context, idx) {
          return Container(
            padding: EdgeInsets.all(16.0),
            child: Text(_items[idx]),
          );
        },
        separatorBuilder: (context, idx) => Divider());
  }
}
