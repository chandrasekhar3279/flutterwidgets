import 'package:flutter/material.dart';
class ListGridWidget extends StatefulWidget {
  const ListGridWidget({super.key});

  @override
  State<ListGridWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ListGridWidget> {
  List<String> fruits = ['Orange','Banana','Apple'];
  Map fruits_persons = {
    'fruits' : ['Apple','Banana','Carrot'],
    'person' :['James','Bond007','Chandrasekhar']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Grid'),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body:Container(
        // child: ListView.builder(
        //   itemCount: fruits.length, 
        //   itemBuilder:(context,index){
        //   return Card(
        //     child: ListTile(
        //       onTap: (){
        //         print((fruits_persons['fruits'][index]));
        //       },
        //       leading: Icon(Icons.person),
        //       title: Text(fruits_persons['fruits'][index]),
        //       subtitle: Text(fruits_persons['person'][index]),
        //     ),
        //   );
        // }),

        // child: GridView(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
        //   children: [
        //     Card(
        //       child: Center(child: Text('Orange')),
              
        //     ),
        //     Card(
        //       child: Center(child: Text('Orange')),
              
        //     ),
        //     Card(
        //       child: Center(child: Text('Orange')),
              
        //     )
        //   ],
        // ),

        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: fruits.length, 
        itemBuilder: (context,index){
          return Card(
            child: Center(child: Text(fruits[index])),
          );
        }),
      ),);
  }
}