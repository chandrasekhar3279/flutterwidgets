import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      // backgroundColor: Colors.amber[400],
      title: Text('Conatiner sized Box'),),
      body: Center(
        child: Container(
          // padding: EdgeInsets.all(10),
          color: Colors.red,
          height: 50,
          width: 50,
          child: Container(color: Colors.yellow, margin: EdgeInsets.all(10),)
          // Center(child: Text('World')),
        )
        // SizedBox(height: 50,width: 50,child: Text('Hello'),),
      ),
    );
  }
}