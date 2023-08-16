import 'package:flutter/material.dart';

class InstaDesignPage extends StatelessWidget {
  const InstaDesignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        title: const Text(
          'wanda.s',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
      ),
      body: Container(
        // color: Colors.red,
        child: Column(children: [
          Container(
            height: 200,
            // color: Colors.red,
            child: Row(children: [
              Container(
                padding: EdgeInsets.all(10),
                width: 170,
                // color: Colors.red,
                child: const Column(children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/profilepic.jpeg'),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'wanda.s',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Photo grapher/Newyork',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ]),
              ),
              Expanded(
                  child: Container(
                width: 170,
                // color: Colors.yellow,
                child: Column(children: [
                  Container(
                    // color: Colors.red,
                    height: 100,
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '150',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Posts',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '5k',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Followers',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '100',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Follwoing',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ]),
                  ),
                  Expanded(
                      child: Container(
                    // color: Colors.blue,
                    child:  Row(
                      children: [
                          Expanded(child: Container(child: ElevatedButton(onPressed: (){}, child: Text('Follow')))),
                          SizedBox(width: 10,),
                          Container(height: 40,width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue, width: 2
                            ),
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.arrow_downward,color: Colors.blue,),),
                          SizedBox(width: 10,),

                        
                      ],
                    ) ,
                  ))
                ]),
              )),
            ]),
          ),
          Container(
            height: 120,
            // color: Colors.green,
            child: ListView.builder(
              scrollDirection:Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context,index){
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGa8nbA4_Y8eEKDf7xiwty91QSKdjt77_UwQ&usqp=CAU'),fit: BoxFit.cover),
                        shape: BoxShape.circle,
                        color: Colors.orange
                      ),
                    ),
                    Text('Name')
                  ],
                );
              }
          )),
          Container(
            height: 100,
            color: Colors.red,
          ),
          Expanded(
              child: Container(
            color: Colors.yellow.shade800,
          ))
        ]),
      ),
    );
  }
}
