import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override 

  List <String> items = [
    "assets/catogry/Property 1=Default.png" , 
    "assets/catogry/Property 1=Variant2.png" , 
    "assets/catogry/Property 1=Variant3.png" , 


  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.motorcycle , size: 20,) , 
            SizedBox(width: 10,) , 
            Text("61 Hopper street.." , style: TextStyle(
              color: Colors.black , 
              fontSize: 20 , 
              fontWeight: FontWeight.bold , 
            ),) , 
            SizedBox(width: 18,) , 
            Icon(Icons.arrow_back_ios , size: 20,) , 
            Spacer() , 
            Image.asset("assets/logo/Vector.png") , 

          ],
        ),
      ), 
      body: Column(
        children: [
          // banner 
         CarouselSlider.builder(
          itemCount: items.length, 
           itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) => 
           Image.asset(items [itemIndex]) , 
           options: CarouselOptions(
            height: 170 ,  
            aspectRatio: 1 , 
            viewportFraction: 0.8 , 
            autoPlay: true , 
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(seconds: 3) ,  
            autoPlayCurve: Curves.linear , 
            enlargeCenterPage: true , 
           ),
          
          ),
        ],
      ),
    );
  }
}