import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Bottomsheet widget',style: TextStyle(
          color: Colors.white
        ),),
      ),
      body:Center(child: ElevatedButton(child:const Text('Show BottomSheet'),onPressed: (){
        showModalBottomSheet(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
          // isDismissible: false,
          enableDrag: true,
          shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),topRight: Radius.circular(20)
            )
          ),
          context: context, 
          builder: (context){
          return const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
           ListTile(
            title: Text('Orange'),
            subtitle: Text('Monday'),
           ),
           ListTile(
            title: Text('Mango'),
            subtitle: Text('Tuesday'),
           ),
           ListTile(
            title: Text('Apple'),
            subtitle: Text('WednesDay'),
           ),
           ListTile(
            title: Text('Banana'),
            subtitle: Text('Thursday'),
           ),
           ListTile(
            title: Text('Kiwis'),
            subtitle: Text('Friday'),
           )
            ],
          );
        });
      },)),
    );
  }
}