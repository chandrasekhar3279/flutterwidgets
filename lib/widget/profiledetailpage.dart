import 'package:flutter/material.dart';

class ProfileDeatilPage extends StatefulWidget {
  const ProfileDeatilPage({super.key});

  @override
  State<ProfileDeatilPage> createState() => _ProfileDeatilPageState();
}

class _ProfileDeatilPageState extends State<ProfileDeatilPage> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Positioned(
                  child: Container(
                // padding: EdgeInsets.all(10),
                height: 500,
                width: w,
                // color: Colors.yellow,
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                      color: Colors.red,
                      height: 450,
                      child: Image.asset(
                        'assets/Doraemon.jpeg',
                        fit: BoxFit.cover,
                      ),
                    )),
                     Positioned(
                      width: w,
                      top: 50,
                      child:const Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_back),
                            Icon(Icons.favorite_rounded)
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 0,
                      right: 24,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/profilepic.jpeg'),
                        radius: 50,
                      ),
                    )
                  ],
                ),
              )),
            ]),
            Container(
              padding: EdgeInsets.all(10),
              // color: Colors.blue,
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chandra sekhar',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'flutter Developer',
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade500),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(10),
                width: w,
                height: 50,
                // color: Colors.orange.shade400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    profileActions('10', Icons.favorite_rounded),
                    profileActions('32', Icons.upload),
                    profileActions('79', Icons.message),
                    profileActions('4073', Icons.face),
                  ],
                )),
            Divider(
              thickness: 2,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                  'Hi,I am Chandrasekhar,Mobile application developer with flutter,i have 2 years of experience in cloudseed technologies in software,previosly i worked with Reactjs,now primarly working with mobile applications using flutter flow and flutter.'),
            )
          ],
        ),
      ),
    );
  }
}

Widget profileActions(String text, IconData icon) {
  return Row(
    children: [
      Text(
        text,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        width: 5,
      ),
      Icon(icon)
    ],
  );
}
