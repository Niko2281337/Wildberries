

import 'package:flutter/material.dart';

final List<String> shoes = ['lib/assets/images/shoes1.webp','lib/assets/images/shoes2.jpeg','lib/assets/images/shoes3.jpeg','lib/assets/images/shoes4.jpeg','lib/assets/images/shoes5.jpeg','lib/assets/images/shoes6.jpeg','lib/assets/images/shoes7.jpeg','lib/assets/images/shoes8.jpeg',];
final List<String> price = ['3599 Р', '5699 Р', '4999 Р', '8999 Р','12999 Р','19999 Р','11999 Р','2599 Р'];
final List<String> brand = ['Centaman','Lee Cooper','THSO','Running','NIKE','BAPE','NIKE','Pulse'];
final List<String> grade = [' 4.7',' 4.6',' 4.9',' 5.0',' 4.8',' 4.7',' 4.9',' 4.2'];

void main() {
  runApp(const MaterialApp(
    home: ListViewLesson(),
    debugShowCheckedModeBanner: false,

  ));
}

class ListViewLesson extends StatelessWidget {
  const ListViewLesson({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 31),
      appBar: AppBar(title: Text('Wildberries'), centerTitle: true, backgroundColor: Colors.purple,),
      body: 
      Container(
        child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.68), itemCount: 8, itemBuilder: ((context, index) {
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
        })),
      ),
      
      
      
      
      );
  }
}