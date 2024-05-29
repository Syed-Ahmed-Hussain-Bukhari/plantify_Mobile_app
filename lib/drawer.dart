import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:plantify/Bottomnavigationbar.dart';
import 'package:plantify/Order.dart';

class drawerCode{

    static menu_method(context){

        return SingleChildScrollView(
          child: Column(
            children: [
               Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.all(30),
                    child: Image.asset("assets/images/Menu.png",),
                  ),
                ),
                         ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.04,
            ),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyBottomNavigationBarPage()));
              },
              child: Container(
                  // margin: EdgeInsets.all(20),
                  child: Image.asset("assets/images/Group 146.png",),
                ),
            ),
             
             SizedBox(
              height: MediaQuery.sizeOf(context).height*0.04,
            ),
            Container(
                // margin: EdgeInsets.all(20),
                child: Image.asset("assets/images/Group 147.png",),
              ),
              
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.04,
            ),
            Container(
                // margin: EdgeInsets.all(20),
                child: Image.asset("assets/images/Group 148.png",),
              ),
              
             
             SizedBox(
              height: MediaQuery.sizeOf(context).height*0.04,
            ),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyOrder()));
              },
              child: Container(
                  // margin: EdgeInsets.all(20),
                  child: Image.asset("assets/images/Group 149.png",),
                ),
            ),
             SizedBox(
              height: MediaQuery.sizeOf(context).height*0.04,
            ),
            Container(
                // margin: EdgeInsets.all(20),
                child: Image.asset("assets/images/Group 150.png",),
              ),
              
             SizedBox(
              height: MediaQuery.sizeOf(context).height*0.07,
            ),
             
              Container(
                // margin: EdgeInsets.all(20),
                child: Image.asset("assets/images/Get the dirt..png",),
              ),
              SizedBox(
              height: MediaQuery.sizeOf(context).height*0.00,
            ),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 20),
              child: TextField(
                style: TextStyle(color: Colors.white,fontSize: 16),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  
                  prefixIcon: Icon(Icons.email_outlined,size: 20,color: Colors.white),
                  hintText: "Enter Your Email...",
                  hintStyle: TextStyle(color: Colors.white,fontSize: 18),
                  focusedBorder: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.white,
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.white,
                    )
                  )
                ),
              ),
            ),
             SizedBox(
              height: MediaQuery.sizeOf(context).height*0.04,
            ),
             
              Container(
                // margin: EdgeInsets.all(20),
                child: Image.asset("assets/images/FAQ.png",),
              ),
              SizedBox(
              height: MediaQuery.sizeOf(context).height*0.02,
            ),
             
              Container(
                // margin: EdgeInsets.all(20),
                child: Image.asset("assets/images/About US.png",),
              ),
              SizedBox(
              height: MediaQuery.sizeOf(context).height*0.02,
            ),
             
              Container(
                // margin: EdgeInsets.all(20),
                child: Image.asset("assets/images/Contact Us.png",),
              ),
               SizedBox(
              height: MediaQuery.sizeOf(context).height*0.1,
            ),
             
           
        
             
            ],
          ),
        );
      
    }

}