import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:plantify/checkOutPage.dart';
import 'package:plantify/HomeView.dart';
import 'package:plantify/Order.dart';
import 'package:plantify/favourite.dart';

class MyBottomNavigationBarPage extends StatefulWidget {
  const MyBottomNavigationBarPage({super.key});

  @override
  State<MyBottomNavigationBarPage> createState() => _MyBottomNavigationBarPageState();
}

class _MyBottomNavigationBarPageState extends State<MyBottomNavigationBarPage> {

  int selectedtab=0;
   List pages=[
    Center(
      child: MyHomeView(),
    ),

    Center(
      child: MyFavouritePage(),
    ),

    Center(
      child: checkOutPage(),
    ),

    Center(
      child: MyOrder(),
    ),
   ];

   chnageTab(int index){
    setState(() {
      selectedtab=index;
    });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: CurvedNavigationBar(
        //  currentIndex: selectedtab,
                  onTap: (index) => chnageTab(index) ,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.white,
        color: Colors.white,

        items:<Widget> [
             
             Image.asset("assets/images/Group 58.png"),
             Image.asset("assets/images/Vector 1.png"),
             Image.asset("assets/images/Group 57.png"),
             Image.asset("assets/images/Group 143(icon).png")

      ]),

      body: pages[selectedtab],
    );
  }
}