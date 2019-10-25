import 'package:flutter/material.dart';

// Stateless: Tidak berganti contoh Login dan Register Page
//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      color: Colors.lightBlue,
//      child: Column(
//        children: <Widget>[
//          Icon(Icons.person, color: Colors.white),
//          Text('Goldwin Japar', style: TextStyle(color: Colors.white))
//        ],
//      ),
//    );
//  }
//}


// Stateful: Memungkinkan untuk berubah/berganti contoh HomePage
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Column(
        children: <Widget>[
          Text('I\'m a stateful', style: TextStyle(color: Colors.white)),
          Text('Wtf')
        ],
      ),
    );
  }
}

