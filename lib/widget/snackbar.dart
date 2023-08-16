import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar'),
      ),
      body: Container(
          child: Center(
            child: ElevatedButton(child: Text('Show snackbar'),onPressed: (){
              final snackbar = SnackBar(
                action: SnackBarAction(label: 'Undo',textColor: Colors.blue,onPressed: (){},),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                behavior: SnackBarBehavior.floating ,
                // padding:EdgeInsets.all(30),
                duration: const Duration(milliseconds: 3000),
                // backgroundColor: Colors.red,
                content: Text('This is Error'));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },)),
      ),
    );
  }
}