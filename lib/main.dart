

import 'package:flutter/material.dart';
import 'package:wildberries/elements/productList.dart';
import 'package:wildberries/pages/catalog.dart';
import 'package:wildberries/pages/ShoppingCart.dart';
import 'package:wildberries/elements/BottomAppBar.dart';


final List<String> shoes = ['lib/assets/images/shoes1.webp','lib/assets/images/shoes2.jpeg','lib/assets/images/shoes3.jpeg','lib/assets/images/shoes4.jpeg','lib/assets/images/shoes5.jpeg','lib/assets/images/shoes6.jpeg','lib/assets/images/shoes7.jpeg','lib/assets/images/shoes8.jpeg',];
final List<String> price = ['3599 Р', '5699 Р', '4999 Р', '8999 Р','12999 Р','19999 Р','11999 Р','2599 Р'];
final List<String> brand = ['Centaman','Lee Cooper','THSO','Running','NIKE','BAPE','NIKE','Pulse'];
final List<String> grade = [' 4.7',' 4.6',' 4.9',' 5.0',' 4.8',' 4.7',' 4.9',' 4.2'];

void main() {
  runApp( MaterialApp(
    routes: {
      '/':(context) =>  WildberriesLesson(),
      '/catalog':(context) => WildberriesMenu(),
      'ShoppingCart':(context) => ShoppingCart()
    },
    debugShowCheckedModeBanner: false,

  ));
}

class WildberriesLesson extends StatefulWidget {
  const WildberriesLesson({super.key});
  @override
  State<WildberriesLesson> createState() => _WildberriesLessonState();
}

class _WildberriesLessonState extends State<WildberriesLesson> {
final ClickerCounter clickerCounter =ClickerCounter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 31),
      appBar: AppBar( toolbarHeight: 80, title: SizedBox( height: 50, child: TextField(   decoration: InputDecoration(labelText: 'Поиск', icon: Icon(Icons.search), border: OutlineInputBorder(), ), )), centerTitle: true, backgroundColor: Colors.purple, actions: [
        Column(children: [
          Text('Корзина: ${clickerCounter.count} ', style: TextStyle(fontSize: 15),),
        IconButton(onPressed: (){setState(() {
          clickerCounter.delete();
        });}, icon: Icon(Icons.delete,)),
        ],)
      ],),
      body: 
      
           ProductList(shoes: shoes, price: price, brand: brand, grade: grade, onPressed: () {
             setState(() {
               clickerCounter.increment();
             });
           },  ),
      
      
      bottomNavigationBar: BottomNavBar()
      
      
      );
  }
}