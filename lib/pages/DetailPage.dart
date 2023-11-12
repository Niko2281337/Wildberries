import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {
  const DetailPage({super.key, this.item, this.item4, this.item3, this.item2});
  final item;
  final item2;
  final item3;
  final item4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${item3}"), backgroundColor: Colors.purple,),
      body: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(color: const Color.fromARGB(255, 31, 31, 31)),
                   
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                   Image.asset("${item}", height: 440, width: 500,),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("${item2}", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700), ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('${item3}', style: TextStyle(color: Colors.white, fontSize: 30 ),),
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
                            Icon(Icons.star, color: Colors.yellow, size: 25,),
                          Text('${item4}', style: TextStyle(color: Colors.white, fontSize: 25),),
                          ],),
                          IconButton(onPressed: () {}, iconSize: 25, icon: Icon(Icons.add_shopping_cart_outlined, color: Colors.white, ), padding: EdgeInsets.zero,),
                      
                        ],),
                      ),
                  
                      
                    ],),
                  ),
    );
  }
}