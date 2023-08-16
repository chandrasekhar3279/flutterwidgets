import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class GeoLocatorWidget extends StatefulWidget {
  const GeoLocatorWidget({super.key});

  @override
  State<GeoLocatorWidget> createState() => _GeoLocatorWidgetState();
}

class _GeoLocatorWidgetState extends State<GeoLocatorWidget> {
  Position?position;

  fetchposition()async{
   bool serviceEnabled;
   String latitude;
   String langitude;
   LocationPermission permission;
   serviceEnabled = await  Geolocator.isLocationServiceEnabled();
   if(!serviceEnabled){
    Fluttertoast.showToast(msg: 'location service is disabled');
   }
   permission = await Geolocator.checkPermission();
   if(permission ==  LocationPermission.denied){
    permission = await Geolocator.requestPermission();
    if(permission == LocationPermission.denied){
      Fluttertoast.showToast(msg: 'You denied the permission');
    }
   }
   if(permission == LocationPermission.deniedForever){
      Fluttertoast.showToast(msg: 'You denied the permission forever');
   }
   Position currentPosition = await Geolocator.getCurrentPosition();
   setState(() {
     position = currentPosition;
     latitude = currentPosition.latitude.toString();
    print(latitude);
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(position == null ? 'Location': position.toString(),style: TextStyle(fontSize: 20)),
            ElevatedButton(onPressed: (){
              fetchposition();
            },child: Text('Get Location'),)
      
          ],
        ),
      ),
    );
  }
}