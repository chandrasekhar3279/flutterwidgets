import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {

  String firstName = '';
  String lastname = '';
  String email = '';
  String password = '';
  final _formkey = GlobalKey<FormState>();

//---------FUNCTIONS------

trySubmit(){
  final isValid = _formkey.currentState!.validate();
  if(isValid){
    _formkey.currentState!.save();
    submitform();
  }else{
    print('Error');
  }
}

submitform() {
  print(firstName);
  print(lastname);
  print(email);
  print(password);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FORM'),
      ),
      body: Center(
        child: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration:const InputDecoration(hintText: 'Enter first Name'),
                    key: const ValueKey('firstName'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Firstname should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      firstName = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration:const InputDecoration(hintText: 'Enter last Name'),
                    key: const ValueKey('lastname'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'lastname should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lastname = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration:const InputDecoration(hintText: 'Enter email'),
                    key: const ValueKey('email'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'email should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),
                  TextFormField(
                    obscureText: true ,
                    decoration:const InputDecoration(hintText: 'Enter your  password'),
                    key: const ValueKey('password'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'password should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                  TextButton(onPressed: (){
                    trySubmit();
                  }, child:const Text('Submit'))

                ],
              )),
        ),
      )),
    );
  }
}
