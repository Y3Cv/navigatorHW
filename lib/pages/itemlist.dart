import 'package:flutter/material.dart';
import 'package:navigatorf/pages/basket.dart';
import 'package:navigatorf/pages/description.dart';
import 'package:navigatorf/pages/profile.dart';

final List Photos = [
  'https://geekville.ru/wp-content/uploads/2022/03/Nike-Air-Max-97-OG-QS-Silver-Bul.webp',
  'https://geekville.ru/wp-content/uploads/2022/03/e093cd58769f8440b9c3052e169afd27.webp',
  'https://geekville.ru/wp-content/uploads/2022/03/Nike-Air-Max-97-OG-QS-Silver-Bul.webp',
  'https://geekville.ru/wp-content/uploads/2022/03/rum_pl_Sneakersi-pentru-barbati.webp',
  'https://geekville.ru/wp-content/uploads/2022/03/e093cd58769f8440b9c3052e169afd27.webp',
  'https://geekville.ru/wp-content/uploads/2022/03/nike-react-vision-dmsx-dimssix-c.webp',
  'https://geekville.ru/wp-content/uploads/2022/03/nike-sb-zoom-stefan-janoski-cool.webp',
  'https://geekville.ru/wp-content/uploads/2022/03/nike-react-vision-dmsx-dimssix-c.webp',
  'https://geekville.ru/wp-content/uploads/2022/03/e093cd58769f8440b9c3052e169afd27.webp',
  'https://geekville.ru/wp-content/uploads/2022/03/nike-sb-zoom-stefan-janoski-cool.webp',

];

final List Name = [
  'Nike Challenger OG',
  'Nike Air Max 270',
  'Nike M2K Tekno',
  'Nike SB',
  'Nike React Vision',
  'Nike Cortez',
  'Nike Air Max Plus',
  'Nike Air Max 97',
  'Nike Air Jordan 1',
  'Nike Air Force 1'];

final List Price = [
  '7800 ₽',
  '14300 ₽',
  '8000 ₽',
  '7000 ₽',
  '12800 ₽',
  '9000 ₽',
  '16300 ₽',
  '16300 ₽',
  '11300 ₽',
  '11300 ₽'];

final List<String> Grade = [
  '4.3',
  '2.2',
  '1.1',
  '4.1',
  '5.0',
  '4.5',
  '2.7',
  '3.5',
  '3.3',
  '1.4'];

final List element = [];
final List element1 = [];
final List element2 = [];

class ItemList extends StatefulWidget {
  ItemList({super.key});

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {

  @override
  Widget build(BuildContext context) {
      const title = 'WildBerries';
      return MaterialApp(
          title: title,
          home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.deepPurple,
              title: const Text(title),
            ),

            body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.9,
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 1,
                  ),

                  itemCount: Photos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Description(
                            Price: Price[index], Photos: Photos[index], Name: Name[index], Grade: Grade[index],)));
                        },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(

                            child: Flexible(
                              flex: 3,
                                child: Image(image: NetworkImage('${Photos[index]}',)
                                ))),
                            Flexible(
                                  flex: 1,
                                    child: Text('${Price[index]}', style: const TextStyle(color: Colors.black, fontSize: 15,),)),
                            Flexible(
                                  flex: 1,
                                    child: Text('${Name[index]}', style: const TextStyle(color: Colors.black, fontSize: 20,),)),
                          Row(
                          children: [
                            Row(children: [
                              const Icon(Icons.star, color: Colors.yellow, size: 25,),
                              Text('${Grade[index]}', style: const TextStyle(color: Colors.black, fontSize: 15),),
                              IconButton(onPressed: () {setState(() {
                                element.add(Photos[index]);
                                element1.add(Price[index]);
                                element2.add(Name[index]);
                              });}, iconSize: 20, icon: Icon(Icons.add_shopping_cart_outlined, color: Colors.black, ), padding: EdgeInsets.zero,),],



                        )]),
                      ],

                    ));
                  },
                )),


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
                    );}, icon: Icon(Icons.home, color: Colors.deepPurple, size: 30,)),
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
                          return ProfileP();
                        },
                        transitionDuration: Duration.zero,
                        reverseTransitionDuration: Duration.zero,
                      ),
                    );
                    }, icon: Icon(Icons.account_circle_outlined, color: Colors.grey, size: 30,)),
                  ],)
            ),
          ));
    }
}

