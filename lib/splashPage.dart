import 'package:flutter/material.dart';
import 'package:plantify/LoginPage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 0),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                  child: Image.asset("assets/images/Rectangle 118.png",fit: BoxFit.fill,),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: MediaQuery.sizeOf(context).height*0.1),
                    child: Image.asset("assets/images/Logo (1).png",width: 300,),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                  child: Image.asset("assets/images/Vector.png",fit: BoxFit.fill,),
                  ),
                  
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.sizeOf(context).height*0.4),
                    width: MediaQuery.sizeOf(context).width,
                  child: Image.asset("assets/images/Plantify.png",width: 300,),
                  )
                ],
                  
              ),
            ),
            SizedBox(height:  MediaQuery.sizeOf(context).height*0.02, ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Image.asset("assets/images/GET READY BE HIGYENIC.png",),
                ),
              ],
            ),
             SizedBox(height:  MediaQuery.sizeOf(context).height*0.02, ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Center(child: Text("All your favourite plants, in one place",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff0D986A)),)),
          
                         ),
              ],
            ),
            SizedBox(height:  MediaQuery.sizeOf(context).height*0.04, ),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>LoginPage()));
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
                child: Center(child: Text("Get Started",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
              ),
            ),
              SizedBox(height:  MediaQuery.sizeOf(context).height*0.1, ),

          ],
        ),
      ),
    );
  }
}