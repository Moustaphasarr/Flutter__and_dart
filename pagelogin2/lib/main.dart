import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool seSouvenir=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/cardmapr-nl-s8F8yglbpjo-unsplash.jpg",),
          fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Banque Mobile",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          leading: Icon(Icons.menu_sharp,color: Colors.white,),
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.5),
              border: Border.all(color: Colors.white30),
              borderRadius: BorderRadius.circular(30)
            ),
            child: buildColumnForm(),
          ),
        ),

      ),
    );
  }
  
  Column buildColumnForm(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: "Numero client",
            icon: Icon(Icons.person_outline,color: Colors.deepOrange,)
          ),
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: "Mot de passe",
            icon: Icon(Icons.lock_open_outlined,color: Colors.deepOrange,),
            suffixIcon: Icon(Icons.remove_red_eye_outlined),
          ),
          obscureText: true,
        ),
        SwitchListTile(
          value: seSouvenir,
           onChanged: (value){
            setState(() {
              seSouvenir=value;
            });
           },
           controlAffinity:ListTileControlAffinity.leading,
           title: Text("Se souvenir de moi"),
           ),
           Container(
            width: double.infinity,
            height: 40,
            margin: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: (){}, 
              child: Text("Connexion")
              ),
           ),
           Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.centerRight,
            child: Text("Mot de passe oublier ?",style: TextStyle(color: Colors.blueAccent),),
           )
      ],
    );
  }
}
