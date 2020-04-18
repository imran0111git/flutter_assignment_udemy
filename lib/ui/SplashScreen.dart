import 'package:flutter/material.dart';
import 'package:food_blog_project/ui/HomeDashboard.dart';
import 'package:food_blog_project/utils/AppColors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(
        const Duration(seconds: 5),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeDashboard()),
        ));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/background.jpg',
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Color(0xFFEA1A64).withOpacity(0.7),
                    Color(0xFFC83D2E).withOpacity(0.8),
                  ],
                  stops: [
                    0.0,
                    1.0
                  ])),
        ),

        Center(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.fastfood,color: Colors.white,size: 120,),
                SizedBox(
                  height: 10,
                ),
                Text('Foody',style: TextStyle(fontFamily: 'Muli-Bold',color: Colors.white,fontSize: 60,fontStyle: FontStyle.italic),)
              ],
            ),
          ),
        )
      ]),
    );
  }
}
