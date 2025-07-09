import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/helper/color.dart';
import 'package:food_app/model/Podact-model.dart';
import 'package:food_app/model/catogry_of_modal.dart';
import 'package:food_app/model/prodact_items.dart';
import 'package:food_app/widgets/custem_prodact.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  List<String> items = [
    "assets/catogry/Property 1=Default.png",
    "assets/catogry/Property 1=Variant2.png",
    "assets/catogry/Property 1=Variant3.png",
  ];

  List<CatogryOfModal> catogry = [
    CatogryOfModal(image: "assets/bananes/image 38 (1).png", name: "Fruits"),

    CatogryOfModal(image: "assets/bananes/Frame 408.png", name: "Milk & egg"),

    CatogryOfModal(image: "assets/bananes/Frame 409.png", name: "Beverages"),

    CatogryOfModal(image: "assets/bananes/Frame 410.png", name: "Laundry"),

    CatogryOfModal(image: "assets/bananes/image 36.png", name: "Vegetables"),
  ];

   List<ProductModel> product = [
    ProductModel(
        name: "Banana",
        image: "assets/fruts/image 44 (2).png",
        price: "3.99",
        rate: "4",
        rateCount: "287",
    ),
    ProductModel(
      name: "Papper",
      image: "assets/fruts/image 42.png",
      price: "2.99",
      rate: "4",
      rateCount: "287",
    ),
    ProductModel(
      name: "Orange",
      image: "assets/fruts/image 44 (1).png",
      price: "1.99",
      rate: "4",
      rateCount: "287",
    ),
   
  ];
    

    List backList = [] ;

    void toggleSelection (ProductModel prodact){
           setState(() {
             if(backList.contains(prodact)){
              backList.remove(prodact);
           } else{
            backList.add(prodact) ;
           }
           });
    } 

    bool isSelected(ProductModel prodact) => backList.contains(product);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.motorcycle, size: 20),
            SizedBox(width: 10),
            Text(
              "61 Hopper street..",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 18),
            Icon(Icons.arrow_back_ios, size: 20),
            Spacer(),
            Image.asset("assets/logo/Vector.png"),
          ],
        ),
      ),
      body: Column(
        children: [
          // banner
          CarouselSlider.builder(
            itemCount: items.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Image.asset(items[itemIndex]),
            options: CarouselOptions(
              height: 170,
              aspectRatio: 1,
              viewportFraction: 0.8,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(seconds: 3),
              autoPlayCurve: Curves.linear,
              enlargeCenterPage: true,
            ),
          ),

          CarouselSlider.builder(
            itemCount: catogry.length,
            itemBuilder: (
              BuildContext context,
              int itemIndex,
              int pageViewIndex,
            ) {
              return Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(75),
                      color: Colors.grey.shade100,
                    ),
                    child: Image.asset(
                      catogry[itemIndex].image,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Text(catogry[itemIndex].name),
                ],
              );
            },
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

          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Fruits",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0XFF0CA201),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ), 

          SizedBox(height: 20,) ,  



        
          // prdact 
          CustemProdact() ,


          // card Widget 

           Padding(
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
                    SizedBox(width: 10), 

          

         
        ],
      ),
    ),
            ),
           ),
        ]
      )
    );
    ;
  }
}
