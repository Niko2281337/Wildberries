import 'package:flutter/material.dart';
import 'package:wildberries/pages/ShoppingCart.dart';
import 'package:wildberries/pages/catalog.dart';
import 'package:wildberries/main.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 31, 31),
      appBar: AppBar(title: Text('Личный кабинет', style: TextStyle(fontSize: 30), ), backgroundColor: Colors.purple, centerTitle: false,),
       body:  Padding(padding: EdgeInsets.only(top: 10, left: 16, right: 16 ) , 
       child: 
       Column(children: [
        Container(
          height: 265,
          width: 500,
          decoration: BoxDecoration(color: const Color.fromARGB(255, 65, 65, 65), borderRadius: BorderRadius.circular(10)),
          child: Column(children: [
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.person, color: Colors.purple, size: 70,),
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Войдите в профиль', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),)
            ],),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Начните покупки прямо сейчас',  style: TextStyle(color: Colors.grey, fontSize: 14),)
            ],),
            SizedBox(height: 5,),
              Container(
                height: 50,
                width: 360,
                decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(5)),
                child: Center(child: Text('Войти или зарегистрироваться', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),)),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('После входа в профиль вам будут доступны товары с', style: TextStyle(color: Colors.grey))
              ],),
              Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                Text('персональными скидками', style: TextStyle(color: Colors.grey),)
              ],)

            

          ]),
          
          

        ),

        SizedBox(height: 30,),
        Container(
          height: 50,
          decoration: BoxDecoration(color: const Color.fromARGB(255, 65, 65, 65), borderRadius: BorderRadius.circular(10)),
          child: Row(children: [
            SizedBox(width: 8,),
            Icon(Icons.error_outline, color: Colors.white, size: 30,),
            SizedBox(width: 5,),
            Text('Информация', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700 ),)
          ]),
        ),
        SizedBox(height: 7,),
        Container(
          height: 50,
          decoration: BoxDecoration(color: const Color.fromARGB(255, 65, 65, 65), borderRadius: BorderRadius.circular(10)),
          child: Row(children: [
            SizedBox(width: 8,),
            Icon(Icons.location_on, color: Colors.white, size: 30,),
            SizedBox(width: 5,),
            Text('Пункты самовывоза', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700 ),)
          ]),
        ),
        SizedBox(height: 30,),

        Container(
          height: 50,
          decoration: BoxDecoration(color: const Color.fromARGB(255, 65, 65, 65), borderRadius: BorderRadius.circular(10)),
          child: Row(children: [
            SizedBox(width: 8,),
            Icon(Icons.business_center, color: Colors.white, size: 30,),
            SizedBox(width: 5,),
            Text('Вакансии Wildberries', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700 ),)
          ]),
        ),



       ],)
       ),




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
        IconButton(onPressed: () {Navigator.pushReplacement(
  context, 
  PageRouteBuilder(
    pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
      return ShoppingCart();
    },
    transitionDuration: Duration.zero,
    reverseTransitionDuration: Duration.zero,
  ),
);
}, icon: Icon(Icons.local_grocery_store, color: Colors.grey, size: 30,)),
        IconButton(onPressed: () {}, icon: Icon(Icons.person, color: Colors.purple, size: 30,)),
      ],)
      ),
    );
  }
}