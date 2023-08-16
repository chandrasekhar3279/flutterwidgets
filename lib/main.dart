import 'package:flutter/material.dart';
import 'package:thirty_widgets/widget/alertdailog.dart';
import 'package:thirty_widgets/widget/animated_text.dart';
import 'package:thirty_widgets/widget/bottomnav.dart';
import 'package:thirty_widgets/widget/bottomsheet.dart';
import 'package:thirty_widgets/widget/button.dart';
import 'package:thirty_widgets/widget/conatiner_sized.dart';
import 'package:thirty_widgets/widget/dismissable.dart';
import 'package:thirty_widgets/widget/drawer.dart';
import 'package:thirty_widgets/widget/dropdown.dart';
import 'package:thirty_widgets/widget/form.dart';
import 'package:thirty_widgets/widget/geolocator.dart';
import 'package:thirty_widgets/widget/image.dart';
import 'package:thirty_widgets/widget/imagepicker.dart';
import 'package:thirty_widgets/widget/instadesign.dart';
import 'package:thirty_widgets/widget/list_grid.dart';
import 'package:thirty_widgets/widget/profiledetailpage.dart';
import 'package:thirty_widgets/widget/rowcol.dart';
import 'package:thirty_widgets/widget/snackbar.dart';
import 'package:thirty_widgets/widget/stack.dart';
import 'package:thirty_widgets/widget/tabbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        buttonTheme: const ButtonThemeData(buttonColor: Colors.amber),
        primaryColor: Colors.orange,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.green),
      ),
      home: const GeoLocatorWidget(),
    );
  }
}
