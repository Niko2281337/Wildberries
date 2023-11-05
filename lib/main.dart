import 'package:flutter/material.dart';

final List<String> mass = ['lib/assets/images/shoes.png'];



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
      appBar: AppBar(title: Text('Wildberries'), centerTitle: true, backgroundColor: Colors.purple,),
      body: 
      GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: ((context, index) {
        return Container(
          decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(16)),
          margin: EdgeInsets.all(16),
          child: Column(children: [
            Image.asset("lib/assets/images/shoes.png"),
            Text('Nike zoom vamero 5', style: TextStyle(color: Colors.white),),
            SizedBox(height: 20,),
            Text('19999 Рублей', style: TextStyle(color: Colors.white, ),),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: () {}, iconSize: 20, icon: Icon(Icons.add_shopping_cart, )),
              ],
            )
            
          ],),
        );
      })),
      
      
      
      
      );
  }
}