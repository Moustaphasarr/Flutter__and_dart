import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// https://bit.ly/3VBAIIg
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(), 
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey[100],
      body:  Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?q=80&w=781&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),fit:BoxFit.cover),        
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 200,left: 100),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black12,Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        alignment: Alignment.center,
        child: Text(
        "Pizzaria",
        style: TextStyle(
        fontSize: 70,
        color: Colors.white,
        fontWeight: FontWeight.w400
        
        ),),
      ),
    ));
    
  }
}