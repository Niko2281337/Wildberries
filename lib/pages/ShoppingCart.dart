import 'package:flutter/material.dart';
import 'package:wildberries/elements/productList.dart';
import 'package:wildberries/main.dart';
import 'package:wildberries/pages/Personal.dart';
import 'package:wildberries/pages/catalog.dart';



class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key, this.element, this.element1, this.element2});
  final element;
  final element1;
  final element2;

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 31),
      appBar: AppBar(title: Text('Корзина', style: TextStyle(fontSize: 30), ), backgroundColor: Colors.purple, centerTitle: false,),
      body: element1.isEmpty
      ? Padding(padding: EdgeInsets.only(top: 9, left: 12,right: 12) , child: 
      Container(
        height: 230,
        decoration: BoxDecoration(color: const Color.fromARGB(255, 65, 65, 65), borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(Icons.local_grocery_store, size: 80, color: Colors.grey,)
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('В корзине пока пусто', style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w600),)
          ],),
          Row( mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Корзина ждет, что ее наполят!', style: TextStyle(color: Colors.grey, fontSize: 14),)
          ],),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {Navigator.pushReplacement(
  context, 
  PageRouteBuilder(
    pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
      return WildberriesMenu();
    },
    transitionDuration: Duration.zero,
    reverseTransitionDuration: Duration.zero,
  ),
);}, child: Text('Перейти в каталог', style: TextStyle(color: Colors.purple , fontSize: 18, fontWeight: FontWeight.w500),)),
            ],
          )

        ]),
      ),)
      :ListView.builder( itemCount: element1.length, itemBuilder: (BuildContext context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
             
              children: [
                
                Image.asset('${element[index]}', height: 160, width: 160,),
                SizedBox(width: 60,),
                Container(
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${element2[index]}', style: TextStyle(color: Colors.white, fontSize: 30),),
                      SizedBox(height: 30,),
                      Text('${element1[index]}', style: TextStyle(color: Colors.white, fontSize: 30)),
                      
                    ],
                  ),
                ),
                Container(
                  width: 30,
                  child: Column(
                    children: [
                      IconButton(onPressed: (){setState(() {
                        element1.remove(element1[index]);
                        element.remove(element[index]);
                        element2.remove(element2[index]);
                      });}, icon: Icon(Icons.clear, color: Colors.red, size: 30,)),
                      SizedBox(height: 115,)
                    ],
                  ),
                )
                
              ],
            ),
          ),
        );

      }),




      bottomNavigationBar: BottomAppBar(color: const Color.fromARGB(255, 50, 50, 50), height: 50, 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        IconButton(onPressed: () {Navigator.pushReplacement(
  context, 
  PageRouteBuilder(
    pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
      return WildberriesLesson();
    },
    transitionDuration: Duration.zero,
    reverseTransitionDuration: Duration.zero,
  ),
);}, icon: Icon(Icons.home, color: Colors.grey, size: 30,)),
        IconButton(onPressed: () {Navigator.pushReplacement(
  context, 
  PageRouteBuilder(
    pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
      return WildberriesMenu();
    },
    transitionDuration: Duration.zero,
    reverseTransitionDuration: Duration.zero,
  ),
);}, icon: Icon(Icons.search, color: Colors.grey, size: 30,)),
        IconButton(onPressed: () {}, icon: Icon(Icons.local_grocery_store, color: Colors.purple, size: 30,)),
        IconButton(onPressed: () {Navigator.pushReplacement(
  context, 
  PageRouteBuilder(
    pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
      return PersonalInformation();
    },
    transitionDuration: Duration.zero,
    reverseTransitionDuration: Duration.zero,
  ),
);
}, icon: Icon(Icons.person, color: Colors.grey, size: 30,)),
      ],)
      ),
    );
  }
}