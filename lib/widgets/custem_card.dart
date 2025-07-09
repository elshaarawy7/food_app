import 'package:flutter/material.dart';
import 'package:food_app/helper/color.dart';

class CustemCard extends StatelessWidget {
   CustemCard({super.key});

  List backList = [] ;

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              width: double.infinity,
              height: 77,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 200,
                      child: ListView.builder(
                          itemCount: backList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context , index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(backList[index].image),
                                ),
                              
                              ),
                            );
                          }
                      ),
                    ), 

                     Spacer(),
                    Container(
                      width: 2,
                      height: 40,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text("View Basket",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    )),
                    SizedBox(width: 10),
                    Badge(
                        backgroundColor: Colors.red,
                        label: Text( backList.length.toString() ,style: TextStyle(fontSize: 13)),
                        largeSize: 13,
                    ),
                  ]
                )
              )
            )
    );
    

  }
}