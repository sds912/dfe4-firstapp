import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // axe horizontal
        mainAxisAlignment: MainAxisAlignment.spaceAround, // axe vertical
        children: [
          Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(100)),
            child: Icon(
              Icons.person,
              size: 33,
              color: Colors.white,
            ),
          ),
          Image(
            image: AssetImage("assets/isep.jpg"),
            width: 100.0,
            height: 100.0,
          ),
          Text(
            'Counter: $counter',
            style: TextStyle(
                color: Colors.orange,
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              onPressed: () {
                counter++;
                setState(() {});
              },
              child: Text('+'))
        ],
      ),
    ));
  }
}
