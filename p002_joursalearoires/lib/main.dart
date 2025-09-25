import 'package:flutter/material.dart';
import 'dart:math';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Application de jours aléatoires",
      debugShowCheckedModeBanner: false,
      home: JoursAleatoires(),
    );
  }
}

class JoursAleatoires extends StatefulWidget {
  const JoursAleatoires({super.key});

  @override
  State<JoursAleatoires> createState() => _JoursAleatoires();
}

class _JoursAleatoires extends State<JoursAleatoires> {
  int indexeCourant=0;
  List<String> listeJours=[
    "Lundi",
    "Mardi",
    "Mercredi",
    "Jeudi",
    "Vendredi",
    "Samedi",
    "Dimanche"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Application jours aléatoires",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        elevation: 12,
        backgroundColor: const Color.fromARGB(255, 87, 194, 243),

      ), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Cliquez pour voir un nouveau jour",
              style: TextStyle(color: Colors.red,fontSize: 25),),
            Text(listeJours[indexeCourant],style: TextStyle(color: Colors.green,fontSize: 40,fontWeight: FontWeight.bold),),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  indexeCourant=Random().nextInt(7);
              });
            }, child: Text("Generer un jour"),),
          ],
        ),
      ),
    );
    
  }
}