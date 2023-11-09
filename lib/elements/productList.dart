import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key, this.shoes, this.price, this.brand, this.grade });
   final shoes;
    final price;
    final brand;
    final grade;

  @override
  Widget build(BuildContext context) {

    return GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.68), itemCount: shoes.length, itemBuilder: ((context, index) {
          return Center(
            child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(color: const Color.fromARGB(255, 31, 31, 31), borderRadius: BorderRadius.circular(16)),
                  margin: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                 Image.asset("${shoes[index]}", height: 200, width: 170,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('${price[index]}', style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w700), ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('${brand[index]}', style: TextStyle(color: Colors.white, fontSize: 13 ),),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Row(children: [
                          Icon(Icons.star, color: Colors.yellow, size: 12,),
                        Text('${grade[index]}', style: TextStyle(color: Colors.white),),
                        ],),
                        IconButton(onPressed: () {}, iconSize: 20, icon: Icon(Icons.add_shopping_cart_outlined, color: Colors.white, ), padding: EdgeInsets.zero,),
                    
                      ],),
                    ),
                
                    
                  ],),
                ),
          );
        }));
  }
}