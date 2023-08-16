import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
               padding: EdgeInsets.zero,
                child: Container(
                  // color: Colors.amber,
                  padding:EdgeInsets.zero,
                  child: const Row(children: [
                    SizedBox(width:10),
                    CircleAvatar(
                      radius: 40,backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/40.jpg'),
                    ),
                    SizedBox(width: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Chandrasekhar',style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        Text('Maadala532@gmail.com')
                      ],
                    )
                  ],)
                ) 
              ),
              const ListTile(
                leading:Icon(Icons.person),
                title:Text('Personal details')
              ),
              const  ListTile(
                leading:Icon(Icons.folder),
                title:Text('My Files')
              ),
              const  ListTile(
                leading:Icon(Icons.group),
                title:Text('Shared with me')
              ),
              const  ListTile(
                leading:Icon(Icons.star),
                title:Text('Starred')
              ),
              const  ListTile(
                leading:Icon(Icons.delete),
                title:Text('Trash')
              ),
              const  ListTile(
                leading:Icon(Icons.upload),
                title:Text('Uploads')
              ),
              Divider(thickness: 1),
              const  ListTile(
                leading:Icon(Icons.share),
                title:Text('Share')
              ),
              const  ListTile(
                leading:Icon(Icons.logout),
                title:Text('Logout')
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title:const Text('Drawer'),
        // backgroundColor: Colors.blue,
      ),
      body: Container(
        child:const Center(child: Text('Hey There')),
      ),
    );
  }
}
