import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withValues(alpha: 0.9),
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                //1
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Icon(
                    Icons.chevron_left
                  ),
                ),
                SizedBox(height: 35,),
                //2
                Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                //4
                buildtext("By loggin in, you agree to our ","Terms of Use."),
                  SizedBox(
                    height: 30,
                  ),
                //5
                Text("Email",style: TextStyle(fontSize: 14),),
                
                //6
                Container(
                  width: double.infinity,
                  height: 55,
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black26)
                  ),
                  child: texfieldBuild()
                  ),
                  //7
                  SizedBox(
                    height: 10,
                  ),
                  Text("We will send you an e-mail with a login link.",style: TextStyle(fontSize: 14)),
                  SizedBox(
                    height: 15,
                  ),
            
                  //8
                  Container(
                  width: double.infinity,
                  height: 55,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black26),
                    
                  ),
                  child: buttonBuild(),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  //9
                  buildLigneDeSeparation(),
                  SizedBox(
                    height: 30,
                  ),
                  buildButtonGoogle("images/image.png","Sign in with google"),
                  SizedBox(
                    height: 15,
                  ),
                  buildButtonGoogle("images/facebook.png","Sign in with Facebook"),
                  SizedBox(height: 15,),
                  buildtext("For more information,please see our ", "Privacy policy")
            
              ],
            ),
          ),
        ),
      ),

        
    );
  }

  //--------------------------------
  Row buildtext(text1,text2){
    return Row(
      children: [
        Text("$text1",style: TextStyle(fontSize: 13)),
        Text("$text2",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),)
      ],
    );
  }
  //--------------------------

  TextField texfieldBuild()
  {
    return TextField(
      decoration: InputDecoration(
        label: Text("Your email"),
        border: InputBorder.none,
      ),
    );
  }
  //---------------------------
  ElevatedButton buttonBuild(){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepOrange,
        elevation: 10,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
      
      onPressed:(){} , 
      child: Center(
        child: Text(
          "Connect",
          style: TextStyle(color: Colors.white),),
      ));
  }

  //----------------------------------------
  Row buildLigneDeSeparation(){
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 1,
            endIndent: 10,
          )
          ),
          Text("Or"),
          Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 10,
            )
            )
          
      ],
    );
  }
  //------------------------------
  Container buildButtonGoogle(image,text){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(20)
      ),
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: (){}, 
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("$image",height: 24,),
            SizedBox(width: 20,),
            Text("$text",style: TextStyle(color: Colors.black,fontSize: 17),)
          ],
        )
        ));
  }
  
}
