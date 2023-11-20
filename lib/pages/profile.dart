import 'package:flutter/material.dart';
import 'package:navigatorf/pages/basket.dart';
import 'package:navigatorf/pages/itemlist.dart';
import 'package:navigatorf/pages/register.dart';

class ProfileP extends StatelessWidget {
  const ProfileP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Личный кабинет',),
          backgroundColor: Colors.deepPurple,
          centerTitle: false,),
        body: Padding(padding: EdgeInsets.all(8.0),
            child:
            Column(children: [
              Container(
                height: 250,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.account_circle, color: Colors.deepPurple, size: 70,),
                    ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Войдите в профиль', style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 20,))]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Начните покупки прямо сейчас', style: TextStyle(
                        color: Colors.grey,))]),

                  SizedBox(height: 5,),
                  Container(
                    height: 50,
                    width: 360,
                    decoration: BoxDecoration(color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(child: TextButton(onPressed: () {
                      showModalBottomSheet(context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 700,
                              decoration: BoxDecoration(color: Colors.deepPurple,),
                              child: Column(
                                children: [
                                  SizedBox(height: 50,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Вход', style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,),)
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                          labelText: 'Почта',
                                          labelStyle: TextStyle(color: Colors.white),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(20)),
                                            borderSide: BorderSide(
                                              color:Colors.white,),
                                          )),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0).copyWith(
                                        bottom: 0),
                                    child: TextField(obscureText: true,
                                      style: TextStyle(color: Colors.white),
                                      cursorColor: Colors.white,
                                      decoration: InputDecoration(
                                          labelText: 'Пароль',
                                          labelStyle: TextStyle(color: Colors.white),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                              borderSide: BorderSide(
                                                color:Colors.white,),
                                          )),),
                                  ),
                                  SizedBox(height: 20,),
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


                                  TextButton(onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => RegisterP()));
                                  },
                                      child:
                                      Text('Зарегестрироваться')
                                  )
                                ],
                              ),
                            );
                          }
                      );
                    },
                        child: Text('Войти или зарегистрироваться', style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),))),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('После входа в профиль вы сможете совершать',
                          style: TextStyle(color: Colors.grey))
                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('покупки в приложении',
                      style: TextStyle(color: Colors.grey),)],)
                ]),
              ),
            ]),
        ),

        bottomNavigationBar: BottomAppBar(
            color: const Color.fromARGB(255, 50, 50, 50), height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (BuildContext context,
                          Animation<double> animation1,
                          Animation<double> animation2) {
                        return ItemList();
                      },
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,
                    ),
                  );
                }, icon: Icon(Icons.home, color: Colors.grey, size: 30,)),
                IconButton(onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (BuildContext context,
                          Animation<double> animation1,
                          Animation<double> animation2) {
                        return ShoppingCart();
                      },
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,
                    ),
                  );
                },
                    icon: Icon(Icons.local_grocery_store, color: Colors.grey,
                      size: 30,)),
                IconButton(onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (BuildContext context,
                          Animation<double> animation1,
                          Animation<double> animation2) {
                        return ProfileP();
                      },
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,
                    ),
                  );
                }, icon: Icon(Icons.account_circle_outlined, color: Colors.deepPurple, size: 30,)),
              ],)
        ));
  }
}
