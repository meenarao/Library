
import 'package:flutter/material.dart';
import 'package:libr/Library.dart';
import 'package:libr/splash.dart';
import 'package:flutter/services.dart';
import 'package:vibration/vibration.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:libr/main.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

        primarySwatch: Colors.blue,
      ),
        home: Splash(),

      //home: AnimatedSplashScreen(Splash: Splash, nextScreen: nextScreen),
    );
  }
}

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dublin Business School Linbrary")),
     
      body: Center(
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      width: 200,
      height: 100,
      child: ElevatedButton(onPressed: (() {
        Navigator.push(context, MaterialPageRoute(builder: (cpntext)=>MyAppd()));
        //HapticFeedback.heavyImpact();
        Vibration.vibrate();
      }
      ), child: Text("Welcome to DBS Library")),
    )
  ],
),
      ),
    );
    
  }
}

// class _MyHomePageState extends StatefulWidget {
//    MyHomePage({super.key, required this.title});
//   final String title;

//     @override
//     State<MyHomePage> createState()=>_MyHomePageState();
// }
// //geolocation
// class _MyHomePageState extends State<MyHomePage> {
//   void getlocation() async {
//     await Geolocator.checkPermission();

//   await Geolocator.requestPermission();
//   Position position = await Geolocator.getCurrentPosition(

//       desiredAccuracy: LocationAccuracy.high);

// print(position);
//   // This widget is the root of your application.
//   @override
//  Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:  AppBar(
//         title: Text(Widget.title),
//       ),
//       body: Center(
//       child: Center(
//         child: ElevatedButton(onPressed: getlocation, child: const Text("Get Location")),
  
//     )
// ),
//       );
    
//   }
//   }
// }