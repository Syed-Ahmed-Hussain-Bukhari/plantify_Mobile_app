import 'package:flutter/material.dart';
import 'package:plantify/Bottomnavigationbar.dart';


class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyBottomNavigationBarPage()));
          },
          child: Image.asset("assets/images/Group 36.png")),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Center(
            child: CircleAvatar(
              radius: 120,
              backgroundColor: Color(0xff0D986A),
            ),
          ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.02,
            ),
          Container(
            child: Image.asset("assets/images/Order Received.png"),
          ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.02,
            ),
            
          Container(
            child: Text("Order ID: #23457689",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),)
          ,),
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.12,
            ),
          Container(
            child: Image.asset("assets/images/MyLogo.png",scale: 7,),
          ),
          SizedBox(height:  MediaQuery.sizeOf(context).height*0.04, ),
            InkWell(
              onTap: (){
      
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff0D986A),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(3, 5),
                      color: Colors.black12
                    )
                  ],
                  borderRadius: BorderRadius.circular(20)
                ),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(left: 50,right: 50),
                width: MediaQuery.sizeOf(context).width,
                child: Center(child: Text("Order Received",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
              ),
            ),
             SizedBox(
              height: MediaQuery.sizeOf(context).height*0.17,
            ),
      
        ]),
      ),
    );
  }
}