import 'package:flutter/material.dart';
import 'package:wildberries/pages/ShoppingCart.dart';
import 'package:wildberries/pages/catalog.dart';
import 'package:wildberries/main.dart';
import 'package:wildberries/pages/RegisterPage.dart';
String user = '';
List login = [];

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  @override
  Widget build(BuildContext context) {
    return login.isEmpty
    
    
    ?Scaffold(
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
                child: Center(child: TextButton( onPressed:() {
                  showModalBottomSheet(context: context, builder: (BuildContext context) {
                    return Container(
                      height: 700,
                      decoration: BoxDecoration(color: Colors.purple, ),
                      child: Column(
                        children: [
                          SizedBox(height: 50,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Вход', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(    onChanged: (String value) {
                              user = value;
                            },   decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder() ) ,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0).copyWith(bottom: 0),
                            child: TextField(     obscureText: true,   decoration: InputDecoration(labelText: 'Passowrd', border: OutlineInputBorder() ) ,),
                          ),
                          TextButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));
                          }, 
                          child:
                          Text('Зарегестрироваться') 
                          ),
                          ElevatedButton(onPressed: () {
                            Navigator.pop(context);
                           setState(() {
                             login.add(user);
                           });
                          }, child: Text('Войти'))
                        ],
                      ),
                    );
                  }
                  );
                }, child: Text('Войти или зарегистрироваться', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),))),
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
    )










    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    :Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 31, 31),
      appBar: AppBar(title: Text('Личный кабинет', style: TextStyle(fontSize: 30), ), backgroundColor: Colors.purple, centerTitle: false,),
       body:  Padding(padding: EdgeInsets.only(top: 10, left: 16, right: 16 ) , 
       child: 
       Column(children: [
        Container(
          width: 500,
          height: 180,
          decoration: BoxDecoration(color: const Color.fromARGB(255, 65, 65, 65), borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Приветствую вас,', style: TextStyle(color: Colors.purple, fontSize: 30),),
                Text(login[0], style: TextStyle(color: Colors.purple, fontSize: 30),),
                SizedBox(height: 15,),
                ElevatedButton(onPressed: () {
                  setState(() {
                    login.remove(login[0]);
                  });
                },
                
                style: ElevatedButton.styleFrom(primary: Colors.red, minimumSize: Size(120,40)),
                 child: Text('Выйти'))
              ],
            ),
          ) ,
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