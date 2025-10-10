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
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool value=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Forbright",style: TextStyle(color: const Color.fromARGB(255, 0, 96, 100),fontSize: 30,fontWeight: FontWeight.w700),),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 35),
          child: Container(
            margin: EdgeInsets.only(
              top: 110
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 30),
                  child: Text("Welcome to forbright!",style: TextStyle(color: Colors.black.withValues(alpha: 0.5)),)
                  ),
                textfielbuild1(),
                SizedBox(
                  height: 15,
                ),
                textfielbuild2(),
                switchBouton(),
                buttonLoggin(),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    onPressed: (){}, 
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        overlayColor: Colors.white,
                      ),
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color:Color.fromARGB(255, 0, 96, 100),
                        fontWeight: FontWeight.w500
                      ),),
                      
                    ),
                )         
              ],
            ),
          ),
        ),
        //
        bottomNavigationBar: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            color: Color.fromARGB(255, 0, 96, 100),
          ),
          
          height: 130,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              BottomNavigationBar(
                backgroundColor: Color.fromARGB(255, 0, 96, 100),
                elevation: 0,
                unselectedItemColor: Colors.white,
                selectedItemColor: Colors.white,
                items: [
                  BottomNavigationBarItem(
                    icon:Icon(Icons.location_on_outlined,color: Colors.white.withValues(alpha: 0.8),size: 30,),
                    label: "Location",
                    
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.help_center_outlined,color: Colors.white.withValues(alpha: 0.8),size: 30,),
                      label: "Help"
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.info_outline,
                          color: Colors.white.withValues(alpha: 0.8),
                          size:30,
                          weight:1,
                        ),
                        label: "About"
                        )
                ],
                ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "2023 forbright bank | ",
                      style:TextStyle(
                        color: Colors.white.withValues(alpha: 0.6),
                        fontSize: 10
                        ),),
                    Text(
                      "Mobile privacy policy",
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  //-------------------------------------------
  TextField textfielbuild1()
  {
    return TextField(
      decoration: InputDecoration(
        labelText: "User ID", 
        contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: BorderSide(
            color: Color.fromARGB(255, 0, 96, 100),
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: BorderSide(
            color: Color.fromARGB(255, 0, 96, 100),
            width: 1.5
          )
        )
        ),
      );

  }
  //--------------------------------------------------
  TextField textfielbuild2()
  {
    return TextField(
      decoration: InputDecoration(
        labelText: "Password", 
        suffixIcon: Icon(Icons.visibility_off_outlined),
        contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: BorderSide(
            color: Color.fromARGB(255, 0, 96, 100),
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: BorderSide(
            color: Color.fromARGB(255, 0, 96, 100),
            width: 1.5
          )
        )
        ),
      );

  }
  //---------------------------
  Container switchBouton()
  {
    return Container(
                  margin: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Switch(
                          value: value, 
                          onChanged:(status){
                            setState(() {
                              value=status;
                            });
                          },
                          activeThumbColor: Color.fromARGB(255, 0, 96, 100),
                          
                          ),
                          Text("Save my User ID",style: TextStyle(color:Colors.black.withValues(alpha: 0.6) ,fontSize: 13),)
                      ],
                    ),
                );
  }
  //-------------------------
  Container buttonLoggin(){
    return Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color:Color.fromARGB(255, 0, 96, 100),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.amber.withValues(alpha: 0.4),
                        blurRadius: 8,
                        spreadRadius: 0
                      )
                    ]
                  ),
                  margin: EdgeInsets.only(top:40),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){}, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      

                    ),
                    child: Text("Log In",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w300),),
                    
                    ),
                );
  }
}