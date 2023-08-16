import 'package:flutter/material.dart';

class RowsCol extends StatelessWidget {
  const RowsCol({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Rows and Columns'),
      ),
      body: Container(
        height:h,
        width: w,
        color: Colors.white,
        // child: Wrap(
        //   direction: Axis.vertical,
        //   children: [
        //   Container(height: 50,width: 50,color: Colors.amber,),
        //   Container(height: 50,width: 50,color: Colors.red,),
        //   Container(height: 50,width: 50,color: Colors.blue,),
        //   Container(height: 50,width: 50,color: Colors.green,),
        //   Container(height: 50,width: 50,color: Colors.black,),
        //   Container(height: 50,width: 50,color: Colors.purple,)
        // ],),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          Container(height: 50,width: 50,color: Colors.amber,),
          Container(height: 50,width: 50,color: Colors.red,),
          Container(height: 50,width: 50,color: Colors.blue,),
          Container(height: 50,width: 50,color: Colors.green,),
          Container(height: 50,width: 50,color: Colors.black,),
          Container(height: 50,width: 50,color: Colors.purple,)
        ],),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   // crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //   Container(height: 50,width: 50,color: Colors.amber,),
        //   Container(height: 50,width: 50,color: Colors.red,),
        //   Container(height: 50,width: 50,color: Colors.blue,),
        //   Container(height: 50,width: 50,color: Colors.green,),
        //   Container(height: 50,width: 50,color: Colors.black,),
        //   Container(height: 50,width: 50,color: Colors.purple,)
        // ],),

      ),
    );
  }
}