import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doraemon Image'),
      ),
      // body: Center(child: Container(
      //   height: 300,
      //   width: 250,
      //   decoration: BoxDecoration(
      //     boxShadow: [
      //       BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 5.0)
      //     ],
      //     image: DecorationImage(image: NetworkImage('https://m.media-amazon.com/images/M/MV5BNTkzNjJhYjQtNjU0Yy00Y2M3LWI2ZDgtNDRhZmNlNDFjMjQ5XkEyXkFqcGdeQXVyODk2ODI3MTU@._V1_FMjpg_UX1000_.jpg'),fit:BoxFit.fill),
      //   color: Colors.red,
      //   borderRadius: BorderRadius.circular(20)
      //   ),
      //   // color:Colors.red,
      //   // child: Image.network('https://m.media-amazon.com/images/M/MV5BNTkzNjJhYjQtNjU0Yy00Y2M3LWI2ZDgtNDRhZmNlNDFjMjQ5XkEyXkFqcGdeQXVyODk2ODI3MTU@._V1_FMjpg_UX1000_.jpg',fit: BoxFit.cover,),
      // )),
      body: Center(child: Container(
        height: 200,
        width: 250,
        // decoration: BoxDecoration(
        //   boxShadow: [
        //     BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 5.0)
        //   ],
        //   image: DecorationImage(image: AssetImage('assets/Doraemon.jpeg',),fit:BoxFit.fill),
        // color: Colors.red,
        // borderRadius: BorderRadius.circular(20)
        // ),
        // color:Colors.red,
        // child: Image.network('https://m.media-amazon.com/images/M/MV5BNTkzNjJhYjQtNjU0Yy00Y2M3LWI2ZDgtNDRhZmNlNDFjMjQ5XkEyXkFqcGdeQXVyODk2ODI3MTU@._V1_FMjpg_UX1000_.jpg',fit: BoxFit.cover,),
        child: CachedNetworkImage(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBT5596721R8J2d4Ih_oj0nuNDJFw9ChMlOg&usqp=CAU',
        placeholder: (context,url)=> Center(
          child: CircularProgressIndicator(),
        ),
        errorWidget: (context, url, error) => Icon(Icons.error),
        )
      )),
    );
  }
}