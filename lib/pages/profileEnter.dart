import 'package:flutter/material.dart';
import 'package:navigatorf/pages/itemlist.dart';
import 'package:navigatorf/pages/basket.dart';
import 'package:navigatorf/pages/profile.dart';

class EnterP extends StatelessWidget {
  const EnterP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.deepPurple, title: Text('Привет, 123!', style: TextStyle(color: Colors.white),)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Доставки', style: TextStyle(fontSize: 20),),
          Icon(Icons.fire_truck_outlined, size: 30,),]),
          Row(
            children: [
              Text('Ближайшая: не ожидается', style: TextStyle(color: Colors.green, fontSize: 20),),
        ]),
          Container(
            width: 400,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(15.0),
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text('Лист ожидания', style: TextStyle(color: Colors.white, fontSize: 20), ),
              ],
            ),
          ),
          Container(
            width: 400,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(15.0),
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text('Отложенные', style: TextStyle(color: Colors.white, fontSize: 20), ),
              ],
            ),
          ),
          Container(
            width: 400,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(15.0),
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text('Покупки', style: TextStyle(color: Colors.white, fontSize: 20), ),
              ],
            ),
          ),
          Container(
            width: 400,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(15.0),
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text('Задать вопрос', style: TextStyle(color: Colors.white, fontSize: 20), ),
              ],
            ),
          ),
          Container(
            width: 400,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(15.0),
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text('Любимые бренды', style: TextStyle(color: Colors.white, fontSize: 20), ),
              ],
            ),
          ),
        TextButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => ProfileP()));
        },
          child:Container(
            width: 200,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(10.0),
            child: Text('Выйти', style: TextStyle(color: Colors.white, fontSize: 20), ),
          )),
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
                        return EnterP();
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
