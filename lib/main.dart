import 'package:flutter/material.dart';
import 'package:navigatorf/secondp.dart';

void main() { runApp(MyApp()); }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List Photos = [
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',
    'https://krasnodar.stores-apple.com/blog/P1054788s-scaled.jpg',

  ];

  final List Name = [
    'AirPods PRO 1',
    'AirPods PRO 2',
    'AirPods PRO 3',
    'AirPods PRO 4',
    'AirPods PRO 5',
    'AirPods PRO 6',
    'AirPods PRO 7',
    'AirPods PRO 8',
    'AirPods PRO 9',
    'AirPods PRO 10',
  ];

  final List Price = [
    '123 ₽',
    '1223 ₽',
    '434 ₽',
    '25234 ₽',
    '345 ₽',
    '234 ₽',
    '45678 ₽',
    '2354 ₽',
    '4545 ₽',
    '3234 ₽',

  ];

  @override

  Widget build(BuildContext context) {
    const title = 'WildBerries';

    return MaterialApp(
        title: title,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.purple,
            title: const Text(title),
          ),
          body: Padding(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 3,
                ),
                itemCount: Photos.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                   TextButton(
                     style: ElevatedButton.styleFrom(primary: Colors.white),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SecondP(Photos: Photos[index], Price: Price[index], Name: Name[index], ),
                              ),
                            );
                          },

                          child: Flexible(
                          flex: 1,
                          child: Image(image: NetworkImage('${Photos[index]}')
                          ))),

                  Flexible(
                  flex: 1,
                  child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SecondP(Photos: Photos[index], Price: Price[index], Name: Name[index], ),
                              ),
                            );
                          },

                          child: Flexible(
                          flex: 1,
                          child: Text('${Price[index]}', style: TextStyle(color: Colors.black, fontSize: 15,),)))),

                      Flexible(
                      flex: 1,
                      child:ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.white),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SecondP(Photos: Photos[index], Price: Price[index], Name: Name[index], ),
                              ),
                            );
                          },

                      child: Flexible(
                          flex: 1,
                          child: Text('${Name[index]}', style: TextStyle(color: Colors.black, fontSize: 20,),)))),
                    ],
                  );
                },
              )),
        ));
  }
}

