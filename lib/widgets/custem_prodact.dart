import 'package:flutter/material.dart';
import 'package:food_app/model/Podact-model.dart';
import 'package:food_app/model/prodact_items.dart';

class CustemProdact extends StatefulWidget {
  const CustemProdact({super.key});

  @override
  State<CustemProdact> createState() => _CustemProdactState();
}

class _CustemProdactState extends State<CustemProdact> {
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

    bool isSelected(ProductModel prodact) => backList.contains(product) ;

  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: List.generate(
                    product.length,
                        (index) {
                  final item = product[index];
                  return ProductItem(
                    image: item.image,
                    name: item.name,
                    rate: item.rate,
                    rateCount: item.rateCount,
                    price: item.price,
                    onTap: () => toggleSelection(item),
                    icon: isSelected(item) ? Icon(Icons.close)  : Icon(Icons.add),
                  );
                }),
              ),
            ),
          );
  }
}