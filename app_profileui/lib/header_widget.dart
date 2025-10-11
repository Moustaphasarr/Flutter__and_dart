import 'package:flutter/material.dart';


class HeaderWidhet extends StatelessWidget {
  final String backgroundImagePath;
  final String profiImagePath;
  final double height;

  const HeaderWidhet({
    super.key,
    this.backgroundImagePath="",
    this.profiImagePath="",
    this.height=400
    });

  @override
  Widget build(BuildContext context) {
    return  Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: height,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                Colors.black.withValues(alpha: 0.9), BlendMode.dstATop,
                ),
                image: AssetImage(backgroundImagePath),
                fit: BoxFit.cover
              )
          ),
        ),
        Positioned(
          top: 20,
          left: 10,
          child: IconButton(onPressed: (){}, 
          icon: Icon(Icons.arrow_back_outlined,color: Colors.white,)),
          
          ),
          Positioned(
            top: 20,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.notifications_active,
                  color: Colors.red.shade200,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.green.shade100,
                ),
              ],
            )
            ),
            //Titre et sous titre du profil
              Positioned(
                top: 100,
                child: Column(
                  children: [
                    Text(
                      "Alioune Badara Diage",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                    Text(
                      "(dit : Golbert Diagne)",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300
                      ),
                    )
                  ],
                )
                ),
              Positioned(
                top: height-70,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 70,
                  child: CircleAvatar(
                    radius: 63,
                    backgroundImage: AssetImage(profiImagePath),
                  ),
                )
                )
      ],
    );
  }
}