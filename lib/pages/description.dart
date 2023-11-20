import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key, this.Photos, this.Price, this.Grade, this.Name,});
  final Name;
  final Price;
  final Grade;
  final Photos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("WildBerries"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,),

        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                  child: Flexible(
                      flex: 1,
                      child: Image.network("$Photos",))),

              Flexible(
                  flex: 1,
                  child: Text("$Price", style: const TextStyle(
                    color: Colors.black, fontSize: 25,),)),

              Flexible(
                  flex: 1,
                  child: Text('$Name', style: const TextStyle(
                    color: Colors.black, fontSize: 30,),)),

              Row(
                  children: [
                    Row(children: [
                      const Icon(Icons.star, color: Colors.yellow, size: 25,),
                      Text("$Grade", style: const TextStyle(
                          color: Colors.black, fontSize: 15),),
                    ],
                    )
                  ]),
            ])
    );
  }
}





