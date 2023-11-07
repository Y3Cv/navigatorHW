import 'package:flutter/material.dart';

class SecondP extends StatelessWidget {
  const SecondP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: const Text('WildBerries'),
      ),
      body: Padding(
    padding: const EdgeInsets.all(8),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [

           Image(image: NetworkImage('https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg')),

          Text('**** ₽', style: TextStyle(color: Colors.black, fontSize: 20,),),

          Text('AirPods PRO', style: TextStyle(color: Colors.black, fontSize: 25,),),

          Text('Цвет: Белый', style: TextStyle(color: Colors.black, fontSize: 15,),),

          Text('Продавец: Apple', style: TextStyle(color: Colors.black, fontSize: 25,),),

          Text('Доставка со склада: 8 августа', style: TextStyle(color: Colors.black, fontSize: 25,),),
        ],
      )),
    );
  }
}