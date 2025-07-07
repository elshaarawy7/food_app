import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
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
        
      ),
    );
  }
}