import 'package:flutter/material.dart';
import 'package:libr/Library.dart';
 import 'home.dart';
 import 'main.dart';
import 'Qrcode.dart';


class Splash extends StatefulWidget {

  const Splash({Key? key }) : super(key: key );

@override

_SplashState createState() => _SplashState();

}



class _SplashState extends State<Splash>{

  @override

  void initState(){

    super.initState();

    _navigatetohome();

  }

  _navigatetohome()async{

    await Future.delayed(Duration(milliseconds: 3000), () {});

    Navigator.pushReplacement(context,

        MaterialPageRoute(builder: (context)=> MyApps()));

  }

  Widget build(BuildContext context) {

     return Scaffold(
      body:Center(

        child: Container(

          // ignore: prefer_const_constructors

          child:Text(

            'Library Books',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)

          ),

      ),

      ),

     );

  }

}