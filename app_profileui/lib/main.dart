
import 'package:app_profileui/header_widget.dart';
import 'package:app_profileui/social_networks.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          HeaderWidhet(
            backgroundImagePath: "assets/images/demba-joob-gGK6WM7MFP8-unsplash.jpg" ,
            profiImagePath: "assets/images/golbert-diagne.jpg",
            height:height/2 ,
          ),
          const SizedBox(height: 75,),
          SocialMediaWidget(),
          const SizedBox(height: 15,),
          buildBibliographie()
        ],
      ),
    );
  }


  Widget buildBibliographie(){
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            "Bibliographie",
            style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),
          ),
          Text(
            "Disparu le 3 avril 2020 , Golbert Diagne est né en septembre 1941 à Saint-Louis."
            "Gilbert fils de Malal Diagne et de Diariatou Fary Ndoye est élevé chez ses "
            "grand parents au quartier de Guet Ndar, à Saint-Luis.",
            textAlign: TextAlign.justify,
            style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w300
            ),
            )
        ],
      ),
      );
  }
}

