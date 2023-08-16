import 'package:flutter/material.dart';
 class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Button Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                overlayColor: MaterialStateProperty.all(Colors.amber[900]),
                elevation: MaterialStateProperty.all(20),
                backgroundColor: MaterialStateProperty.all(Colors.amber)),
              onPressed: (){}, child:const Text('Press me',style: TextStyle(fontSize: 20,color: Colors.black),), ),

             const SizedBox(height: 20,),
            Container(
              height:40,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius:BorderRadius.circular(30)))
                ),
                onPressed: (){
                 print('Like');
              }, 
              child:const Text('Press me',style: TextStyle(fontSize: 20,color: Colors.white),), ),
            )
          ],
        ),
      ),
    );
  }
}