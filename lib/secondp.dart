import 'package:flutter/material.dart';

class SecondP extends StatelessWidget {
  const SecondP({super.key, this.Photos, this.Price, this.Name });
  final Name;
  final Price;
  final Photos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WildBerries"), backgroundColor: Colors.purple,),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
            child: Flexible(
            flex: 1,
            child: Image.network("${Photos}",))),

            Flexible(
              flex: 1,
            child: Text("${Price}", style: TextStyle(color: Colors.black, fontSize: 25,),) ),

            Flexible(
              flex: 1,
            child: Text('${Name}', style: TextStyle(color: Colors.black, fontSize: 30,),)),
              ]));
  }
}