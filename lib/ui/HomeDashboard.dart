import 'package:flutter/material.dart';
import 'package:food_blog_project/ui/DrinkListScreen.dart';
import 'package:food_blog_project/ui/FoodListScreen.dart';
import 'package:food_blog_project/utils/AppColors.dart';

class HomeDashboard extends StatefulWidget {
  @override
  _HomeDashboardState createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {

  int i = 0;
  var pages = [
     FoodListScreen(),
     DrinkListScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[i],
      bottomNavigationBar:  BottomNavigationBar(
        selectedItemColor: AppColors.primary,

        items: [
           BottomNavigationBarItem(
            icon: new Icon(Icons.fastfood),
            title: new Text('Foods'),
          ),
           BottomNavigationBarItem(
            icon: new Icon(Icons.local_drink),
            title: new Text('Drinks'),
          ),
        ],
        currentIndex: i,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            i = index;
          });
        },
      ),
    );
  }
}
