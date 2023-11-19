import 'package:flutter/material.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( backgroundColor: Colors.purple, centerTitle: true, title: Text('Регистрация', style: TextStyle(color: Colors.white),)),
      body: Padding(padding: EdgeInsets.all(16) , child: Column(children: [
          TextField( decoration: InputDecoration(labelText: 'Name', border: OutlineInputBorder() ) ,),
          SizedBox(height: 20,),
          TextField( decoration: InputDecoration(labelText: 'Surname', border: OutlineInputBorder() ) ,),
           SizedBox(height: 20,),
          TextField( decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder() ) ,),
           SizedBox(height: 20,),
          TextField( decoration: InputDecoration(labelText: 'Number', border: OutlineInputBorder() ) ,),
          SizedBox(height: 20,),
           TextField( obscureText: true, decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder() ) ,),
           ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Зарегестрироваться'), )
      ]),),
    );
  }
}