import 'package:flutter/material.dart';


 void main(){
  
  runApp(Shomping());
      
}


class Shomping extends StatefulWidget {
  @override
  _ShompingState createState() => _ShompingState();
}

class _ShompingState extends State<Shomping> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shomping'),
      ),
      body: Container(
        color: Colors.white38,

        child: Text('Shomping',),
      ),


    );
  }
}

