import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plantify/Bottomnavigationbar.dart';
import 'package:plantify/SignUpPage.dart';
import 'package:plantify/splashPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    Icon passIcon=Icon(Icons.visibility_off);
    var isCheckPass=true;

  TextEditingController emailController=TextEditingController();
  TextEditingController PasswordController=TextEditingController();

  LoginPage(String email,String password){
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value) => 
    
               ScaffoldMessenger.of(context).showSnackBar(
               SnackBar(
                padding: EdgeInsets.only(left: 12),
              content: Container(
            
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)
                  ),
                padding: EdgeInsets.all(5),
                child: Container(
                  alignment: Alignment.centerRight,
                  
                  child: Text("Welcome back! You have successfully logged in.",style: TextStyle(color: Color(0xff002140),fontSize: 17,fontWeight: FontWeight.bold,wordSpacing: 1.5),))),
              backgroundColor:Color(0xff9CE5CB),
              elevation: 10,
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.all(8),
            )
            )
    ).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyBottomNavigationBarPage())));

  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Row(
            children: [
              InkWell(
                onTap: (){
                   Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>SplashPage()));
         
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20,top: 30),
                  child: Image.asset("assets/images/Group 36.png"),
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: (){
         
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20,top: 12),
                  child: Image.asset("assets/images/Logo (3).png",scale: 6,),
                ),
              ),
            ],
          ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,top: 20),
                  child: Center(child: Text("Nature is pleased with simplicity. And nature\n is no dummy.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff0D986A)),)),
          
                         ),
              ],
            ),
          Row(
            children: [
              Container(
                
                  margin: EdgeInsets.only(left: 20,top: 45),
                  child: Image.asset("assets/images/Login.png"),
                ),
            ],
          ),
      
            Row(
              children: [
                Container(
                   margin: EdgeInsets.only(left: 20,top: 30),
                  child: Text("Username/ Email",style: TextStyle(fontSize: 22,color: Colors.grey),),
                ),
              ],
            ),
            Container(
             margin: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 2),
              child: TextField(
                 style: TextStyle(color: Colors.black,fontSize: 16),
                cursorColor: Colors.black,
                 controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person,size: 20,color: Colors.grey,),
                  hintText: "Email...",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    )
                  )
                ),
              ),
            ),
            Row(
              children: [
                Container(
                   margin: EdgeInsets.only(left: 20,top: 8),
                  child: Text("Password",style: TextStyle(fontSize: 22,color: Colors.grey),),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 2),
              child: TextField(
                obscureText: isCheckPass,
                style: TextStyle(color: Colors.black,fontSize: 16),
                cursorColor: Colors.black,
               controller: PasswordController,
                decoration: InputDecoration(
                  
                  suffixIcon: GestureDetector(
                    onTap: (){
                    if(isCheckPass){
                      passIcon=Icon(Icons.visibility);
                      isCheckPass=false;
                    }
                    else{
                      passIcon=Icon(Icons.visibility_off);
                      isCheckPass=true;
                    }
                    setState(() {
                      
                    });
                    },
                    child: passIcon),
                  prefixIcon: Icon(Icons.lock,size: 20,color: Colors.grey),
                  hintText: "Password...",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    )
                  )
                ),
              ),
            ),
            InkWell(
              onTap: (){
      
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   Container(
                    margin: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 0),
                    child: Text("Forget Password",style: TextStyle(fontSize: 18,color: Colors.grey),),
                  ),
                ],
              ),
            ),
            SizedBox(height:  MediaQuery.sizeOf(context).height*0.01, ),
            InkWell(
              onTap: (){
           LoginPage(emailController.text.toString(), PasswordController.text.toString());
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
                child: Center(child: Text("Login",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                   margin: EdgeInsets.only(left: 8,top: 30),
                  child: Text("Don't have an Account? ",style: TextStyle(fontSize: 22,color: Colors.grey),),
                ),
                 InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>SignUpPage()));
           
                  },
                   child: Container(
                     margin: EdgeInsets.only(left: 8,top: 30),
                    child: Text("SignUp",style: TextStyle(fontSize: 22,color: Colors.black),),
                               ),
                 ),
              ]
            ),
              SizedBox(height:  MediaQuery.sizeOf(context).height*0.1, ),

          
          
        ]),
      ),
    );
  }
}