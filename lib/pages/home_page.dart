import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_app/model/catogry_of_modal.dart';

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

  List <CatogryOfModal> catogry = [
    CatogryOfModal(
      image: "assets/bananes/image 38 (1).png", 
      name: "Fruits"
      ) ,  

       CatogryOfModal(
       image:"assets/bananes/Frame 408.png" , 
       name: "Milk & egg"
      ) , 

       CatogryOfModal(
      image: "assets/bananes/Frame 409.png", 
      name: "Beverages" , 
      ) , 

       CatogryOfModal(
      image:"assets/bananes/Frame 410.png" , 
      name: "Laundry"
      ) , 

       CatogryOfModal(
      image: "assets/bananes/image 36.png", 
      name: "Vegetables" , 

      ) , 
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
         
         CarouselSlider.builder(
          itemCount: catogry.length, 
           itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex){
            return Column(
              children: [
                     Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(75) , 
                        color: Colors.grey.shade100 , 

                      ), 
                      child: Image.asset(catogry[itemIndex].image , height: 100,width: 100,),
                     ) , 
                     Text(catogry[itemIndex].name) ,
              ],
            ); 
            
           } ,
           options: CarouselOptions(
              height: 170,
              //aspectRatio: 1,
              viewportFraction: 0.23,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(seconds: 3),
              autoPlayCurve: Curves.linear,
              enlargeCenterPage: false,
           ),
            
           
          
          ), 

          
        ],
      ),
    );
  }
}