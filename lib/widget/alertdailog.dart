import 'package:flutter/material.dart';
class AlertDailogWidget extends StatelessWidget {
  const AlertDailogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dailog'),
      ),
    body: Center(child: ElevatedButton(child: Text('Show Alert'),onPressed: (){
      _showMyDailog(context);
    },)),
    );
  }
}
Future<void>_showMyDailog(BuildContext context) async{
return showDialog(context: context,builder:(BuildContext context){
  return AlertDialog(
    // backgroundColor: Colors.orange.shade300,
    elevation: 0,
    scrollable: true,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    title: Text('This is a demo'),
    content: SingleChildScrollView(
      child: ListBody(children: [
        Text('This is a Alert Dailog'),
        Text('This is informative dailog')
      ]),
    ),
    actions: [
      TextButton(onPressed: (){}, child: Text('Approved')),
      TextButton(onPressed: (){
        Navigator.pop(context);
      }, child: Text('Cancel'))

    ],
  );
});
}