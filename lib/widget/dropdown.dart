import 'package:flutter/material.dart';
class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String selectedValue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Dropdown Item'),
       ),
       body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              margin: EdgeInsets.all(10),
              width:MediaQuery.of(context).size.width,
              // color: Colors.red,
              child: DropdownButton<String>(
                isExpanded: true,
                dropdownColor: Colors.grey.shade200,
                value: selectedValue,
                icon: Icon(Icons.arrow_circle_down_rounded),
                onChanged: (String? newvalue){
                 setState(() {
                   selectedValue = newvalue!;
                 });
                },
                items:<String> [
              'Orange','Banana','Grapes','Kiwi','Mango'
              ].map<DropdownMenuItem<String>>((String value){
                return DropdownMenuItem<String>(child:Text(value) ,value: value);
              }).toList(),
            ))
          ]
         ),
       ),
    );
}
}