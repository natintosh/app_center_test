import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App Center Test')),
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
    return Scaffold(
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              setState(() {
                --count;
              });
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(
            height: 4,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                ++count;
              });
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Total count'),
              Text('$count'),
            ],
          ),
        ),
      ),
    );
  }
}
