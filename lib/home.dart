import 'package:firstapp/accueil.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
          Image(width: 300, image: AssetImage("assets/isep.jpg")),
          Text("Carpoolin" ,style: TextStyle(fontSize: 36,fontWeight: FontWeight.w800),),
          Text("drive & save money",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,color: Colors.grey
            ),
            child: IconButton(onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => Accueil() ));
            }, icon: Icon(Icons.arrow_forward)))
        
        
          ],),
      ),
    );
  }
}