import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Center Test'),
        centerTitle: true,
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: _Content(),
    );
  }
}

class _Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[Text('Total amount')],
        ),
      ),
    );
  }
}
