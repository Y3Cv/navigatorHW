import 'package:flutter/material.dart';
import 'package:navigatorf/pages/itemlist.dart';
import 'package:navigatorf/pages/profile.dart';

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
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(title: Text('Корзина'), backgroundColor: Colors.deepPurple, centerTitle: false,),
      body: element1.isEmpty
          ? Padding(padding: EdgeInsets.all(8.0) , child:
      Container(
        height: 230,
        decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.circular(10)),
        child: Column(children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.local_grocery_store, size: 80, color: Colors.deepPurple,)
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('В корзине пока пусто', style: TextStyle(color: Colors.deepPurple, fontSize: 24, fontWeight: FontWeight.w600),)
            ],),
          Row( mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Корзина ждет, что ее наполнят!', style: TextStyle(color: Colors.grey, fontSize: 15),)
          ],),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
                    return ItemList();
                  },
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );},style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple),
                  child: Text('Перейти в каталог', style: TextStyle(color: Colors.white, fontSize: 20),)),
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
                Image.network('${element[index]}', height: 150, width: 200,),
                Container(
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                          Text('${element2[index]}', style: TextStyle(color: Colors.black, fontSize: 20),),
                          Text('${element1[index]}', style: TextStyle(color: Colors.black, fontSize: 20)),
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
                    return ItemList();
                  },
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );}, icon: Icon(Icons.home, color: Colors.grey, size: 30,)),
              IconButton(onPressed: () {}, icon: Icon(Icons.local_grocery_store, color: Colors.deepPurple, size: 30,)),
              IconButton(onPressed: () {Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
                    return ProfileP();
                  },
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
              }, icon: Icon(Icons.account_circle_outlined, color: Colors.grey, size: 30,)),
            ],)
      ),
    );
  }
}

