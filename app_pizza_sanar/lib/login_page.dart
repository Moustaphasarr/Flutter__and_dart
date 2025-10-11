import 'package:app_pizza_sanar/my_transparent_text_field.dart';
import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        
        children: [
          buildBackgroundImage(),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Titre de page
                const Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 20,vertical: 80),
                  child: Text(
                    "Pizza-Sanar",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w300,
                      color: Colors.white
                    ),
                  ),
                  ),
                  //Email
                  MyTransparentTextField(
                    labeltext: "Email",
                    hintText: "Donnez un email valide",
                    prefixIcone: Icons.mail,
                  ),
                  const SizedBox(height: 10),
                  //Password
                  MyTransparentTextField(
                    labeltext: "Mot de passe",
                    hintText: "Donnez le mot de passe",
                    prefixIcone: Icons.lock_rounded,
                    isPassword: true,
                  ),
                  const SizedBox(height: 5,),
                  //Mot de passe oublié
                  Container(
                    width: double.infinity,
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: (){}, 
                      child: Text(
                        "Mot de passe oublié ?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300
                        ),
                      )
                      ),
                  ),
                  //Bouton de connexion
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text(
                      "Connexion",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                  ),
                  //Texte bouton créer un compte
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 40),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: TextButton(
                      onPressed: (){}, 
                      child: const Text(
                        "Créer un compte",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                      ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildBackgroundImage(){
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image:AssetImage("assets/chad-montano-MqT0asuoIcU-unsplash.jpg"),
          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        fit: BoxFit.cover
      ),
      ),
    );
  }
}