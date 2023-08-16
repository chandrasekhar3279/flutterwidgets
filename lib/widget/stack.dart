import 'package:flutter/material.dart';
class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Container(
        // color: Colors.amber,
        // child: Center(child: Stack(
        //   children: [
        //     Positioned(
        //       bottom: 10,
        //       left:20,
        //       child: Container(height: 400,width: 300, color: Colors.red)),
        //     Positioned(
        //       top:10,
        //       right: 70,
        //       child: Container(height: 200,width: 200, color: Colors.green)),
        //     Center(child: Container(height: 100,width: 100, color: Colors.blue)),

        //   ],
        // )),
        child: Stack(children: [
          Positioned(child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(image: AssetImage('assets/Doraemon.jpeg'),
              fit: BoxFit.cover)),
          ),
          ),
            Positioned(
              left: 20,
              top:20,
              child: Container(height: 50,width: 50,color: Colors.yellow,),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,width: 50,color: Colors.blue
              ),
            )

            // child: Image.asset('assets/Doraemon.jpeg'),
        
        ],),
      ),
    );
  }
}