import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds : 3), (){
      if (!mounted)return;
     Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context)=>Login()
      ),
    );
   
    }
    );
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Color.fromARGB(255, 25, 49, 69),
    body: Center(
       child: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
         children: [ Icon( 
          Icons.music_note,
           size: 80, 
           color: const Color.fromARGB(255, 247, 242, 231), 
           ), 
           SizedBox(height: 10), 
           Text( "Music",
            style: TextStyle(
               fontSize: 30, 
               fontWeight: FontWeight.bold,
               fontFamily: 'popins',
                color: Colors.white, ), 
                ), SizedBox(height: 20),
          
      ],
     ),
    ),
   );
  } 
 }