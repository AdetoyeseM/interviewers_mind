import 'package:flutter/material.dart'; 
import 'package:interviewers_mind/screens/Splachscreen.dart';
 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Interviewer\'s Mind',
      home:  Splash(),
          );
        }
      }
       