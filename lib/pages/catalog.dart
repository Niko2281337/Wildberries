import 'package:flutter/material.dart';
import 'package:wildberries/main.dart';
import 'package:wildberries/pages/Personal.dart';
import 'package:wildberries/pages/ShoppingCart.dart';

class WildberriesMenu extends StatelessWidget {
  const WildberriesMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  const Color.fromARGB(255, 31, 31, 31),
      appBar: AppBar(title: Text('Каталог', style: TextStyle(fontSize: 30), ), backgroundColor: Colors.purple, centerTitle: false,),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount (crossAxisCount: 3, childAspectRatio: 1) , itemBuilder: (context, index) {
        return Container( margin: EdgeInsets.all(5), decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(16)));
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
        IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.purple, size: 30,)),
        IconButton(onPressed: () {Navigator.pushReplacement(
  context, 
  PageRouteBuilder(
    pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
      return ShoppingCart();
    },
    transitionDuration: Duration.zero,
    reverseTransitionDuration: Duration.zero,
  ),
);}, icon: Icon(Icons.local_grocery_store, color: Colors.grey, size: 30,)),
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