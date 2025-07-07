import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/pages/home_page.dart';

class SpalchPage extends StatefulWidget {
  const SpalchPage({super.key});

  @override
  State<SpalchPage> createState() => _SpalchPageState();
}

class _SpalchPageState extends State<SpalchPage> {
  @override 

  void initState(){
    Future.delayed(Duration(seconds: 1) , (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return HomePage() ;
      }));
    }) ;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/logo/Frame 43553.png")
      ),
    );
  }
}