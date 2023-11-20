import 'package:flutter/material.dart';
import 'package:navigatorf/pages/itemlist.dart';


class RegisterP extends StatelessWidget {
  const RegisterP({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( backgroundColor: Colors.deepPurple, title: Text('Регистрация', style: TextStyle(color: Colors.white),)),
      body: Padding(padding: EdgeInsets.all(16) , child: Column(children: [
        TextField( decoration: InputDecoration(labelText: 'Имя', border: OutlineInputBorder() ) ,),
        SizedBox(height: 20,),
        TextField( decoration: InputDecoration(labelText: 'Фамилия', border: OutlineInputBorder() ) ,),
        SizedBox(height: 20,),
        TextField( decoration: InputDecoration(labelText: 'Почта', border: OutlineInputBorder() ) ,),
        SizedBox(height: 20,),
        TextField( decoration: InputDecoration(labelText: 'Номер телефона', border: OutlineInputBorder() ) ,),
        SizedBox(height: 20,),
        TextField( obscureText: true, decoration: InputDecoration(labelText: 'Пароль', border: OutlineInputBorder() ) ,),
        SizedBox(height: 50,),
        SizedBox(
            height:50, //height of button
            width:150,
            child:ElevatedButton(
              child: Text('Войти', style: TextStyle(color: Colors.white,
                fontSize: 20,),),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ItemList()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            )),
      ]),),
    );
  }
}