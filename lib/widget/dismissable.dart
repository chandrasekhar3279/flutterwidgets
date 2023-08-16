import 'package:flutter/material.dart';

class DismissableWidget extends StatefulWidget {
  const DismissableWidget({super.key});

  @override
  State<DismissableWidget> createState() => _DismissableWidgetState();
}

class _DismissableWidgetState extends State<DismissableWidget> {
  List<String> fruits = [
    'Orange',
    'Banana',
    'Carrot',
    'Dragon Fruit',
    'Grape',
    'KIWI'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissable Package'),
      ),
      body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fruit = fruits[index];
            return Dismissible(
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(fruits[index]),
                      backgroundColor: Colors.red,
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(fruits[index]),
                      backgroundColor: Colors.green,
                    ));
                  }
                },
                key: Key(fruit),
                background: Container(color: Colors.red),
                secondaryBackground: Container(
                  color: Colors.green,
                ),
                child: Card(
                  child: ListTile(
                    title: Text(fruits[index]),
                  ),
                ));
          }),
    );
  }
}
