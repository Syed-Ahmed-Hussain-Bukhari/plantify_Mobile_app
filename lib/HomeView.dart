
import 'package:flutter/material.dart';
import 'package:plantify/AddCart.dart';
import 'package:plantify/drawer.dart';
import 'package:plantify/notification.dart';


var nImage;
var pImage;

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  var changeColor1=Colors.green;
  var changeColor2=Colors.grey;
  var changeColor3=Colors.grey;
  var changeColor4=Colors.grey;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        
      ),

      endDrawer:Drawer(
        backgroundColor: Color(0xff0D986A),
        child: drawerCode.menu_method(context)
      ) ,


      body: ListView(
        children: [
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Image.asset("assets/images/Logo (3).png",scale:7,),
              ),
                 InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyNotificationPage()));
                  },
                   child: Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(Icons.notifications_active_outlined,color: Colors.black,size: 30,)),
                 ),
            ],
          ),
          Container(
                margin: EdgeInsets.all(20),
                child: Image.asset("assets/images/Group 73.png",scale: 0.9,),
              ),
              Container(
           margin: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 2),
            child: TextField(
          
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,size: 20,color: Colors.grey,),
                suffixIcon:  Icon(Icons.qr_code_scanner,size: 20,color: Colors.grey,),
                hintText: "Search...",
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
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                    
                    changeColor1=Colors.green;
                    changeColor2=Colors.grey;
                    changeColor3=Colors.grey;
                    changeColor4=Colors.grey;
                    setState(() {
                      
                    });
                  },
                  child: Container(
                     margin: EdgeInsets.only(left: 20,top: 30),
                    child: Text("Top Pick",style: TextStyle(fontSize: 18,color:changeColor1,fontWeight: FontWeight.bold),),
                  ),
                ),
                 InkWell(
                  onTap: (){
                    changeColor2=Colors.green;
                    changeColor3=Colors.grey;
                    changeColor4=Colors.grey;
                    changeColor1=Colors.grey;
                    setState(() {
                      
                    });
                  },
                   child: Container(
                     margin: EdgeInsets.only(left: 20,top: 30),
                    child: Text("Indoor",style: TextStyle(fontSize: 18,color: changeColor2,fontWeight: FontWeight.bold),),
                                 ),
                 ),
                 InkWell(
                  onTap: (){
                    changeColor3=Colors.green;
                    changeColor2=Colors.grey;
                    changeColor1=Colors.grey;
                    changeColor4=Colors.grey;
                    setState(() {
                      
                    });
                  },
                   child: Container(
                     margin: EdgeInsets.only(left: 20,top: 30),
                    child: Text("Outdoor",style: TextStyle(fontSize: 18,color: changeColor3,fontWeight: FontWeight.bold),),
                                 ),
                 ),
                 InkWell(
                  onTap: (){
                    changeColor4=Colors.green;
                    changeColor1=Colors.grey;
                    changeColor2=Colors.grey;
                    changeColor3=Colors.grey;
                    setState(() {
                      
                    });
                  },
                   child: Container(
                     margin: EdgeInsets.only(left: 20,top: 30),
                    child: Text("Seeds",style: TextStyle(fontSize: 18,color: changeColor4,fontWeight: FontWeight.bold),),
                                 ),
                 ),
              ],
            ),
          
          ),
            InkWell(
              onTap: (){
                  nImage="Watermelon Peperomia";
                  pImage="assets/images/Peperomia Obtusfolia.png";

                  setState(() {
                    
                  });
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AddTocartPage(plantPic: Image.asset("assets/images/Peperomia Obtusfolia.png",width: 220,),clr: Color(0xff9CE5CB),image: Image.asset("assets/images/Peperomia.png"),price:'\$400',)));
         
              },
              child: Stack(
              children: [
              
                 Container(
                  margin: EdgeInsets.all(20),
                  child: Image.asset("assets/images/Group 62.png",),
                             ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right:  MediaQuery.sizeOf(context).width*0.01,),
                      child: Image.asset("assets/images/Peperomia Obtusfolia.png",scale: 4,),
                    ),
                  ],
                ),
                    ],
                      ),
            ),
          InkWell(
             onTap: (){
                  nImage="Peperomia Obtusfolia";
                  pImage="assets/images/sage.png";
                  setState(() {
                    
                  });
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AddTocartPage(plantPic: Image.asset("assets/images/sage.png",width: 260,),clr: Color(0xffFFE899),image: Image.asset("assets/images/Watermelon...png"),price:'\$350',)));
                      },
            child: Stack(
              children: [
              
                 Container(
                  margin: EdgeInsets.all(20),
                  child: Image.asset("assets/images/Group 63.png",),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right:  MediaQuery.sizeOf(context).width*0.01,),
                      child: Image.asset("assets/images/sage.png",scale: 4,),
                    ),
                  ],
                ),
                    ],
            ),
          ),
           Stack(
            children: [
            
               Container(
                margin: EdgeInsets.all(20),
                child: Image.asset("assets/images/Group 81.png",),
              ),
             
                  ],
          ),
           InkWell(
            onTap: (){
                 nImage="Croton Petra";
                  pImage="assets/images/interior medium light.png";
                  setState(() {
                    
                  });
                 Navigator
                 .pushReplacement(context, MaterialPageRoute(builder: (context)=>AddTocartPage(plantPic: Image.asset("assets/images/interior medium light.png",width: 220,),clr: Color(0xff56D1A7),image: Image.asset("assets/images/Croton Petra.png"),price:'\$200',)));
         
                     },
             child: Stack(
              children: [
              
                 Container(
                  margin: EdgeInsets.all(20),
                  child: Image.asset("assets/images/Group 64.png",),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: MediaQuery.sizeOf(context).width*0.01,),
                      child: Image.asset("assets/images/interior medium light.png",scale: 4,),
                    ),
                  ],
                ),
                    ],
                     ),
           ),
          InkWell(
            onTap: (){
                 nImage="Bird’s Nest Fern";
                  pImage="assets/images/Layer 8.png";
                  setState(() {
                    
                  });
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AddTocartPage(plantPic: Image.asset("assets/images/Layer 8.png",width: 260,),clr: Color(0xffB2E28D),image: Image.asset("assets/images/Bird’s Nest Fern.png"),price:'\$160',)));
               },
            child: Stack(
              children: [
              
                 Container(
                  margin: EdgeInsets.all(20),
                  child: Image.asset("assets/images/Group 67.png",),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right:  MediaQuery.sizeOf(context).width*0.01,),
                      child: Image.asset("assets/images/Layer 8.png",scale: 3.5,),
                    ),
                  ],
                ),
                    ],
            ),
          ),
           InkWell(
            
            onTap: (){
                  nImage="Cactus";
                  pImage="assets/images/Mask Group (1).png";
                  setState(() {
                    
                  });
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AddTocartPage(plantPic: Image.asset("assets/images/Mask Group (1).png",width: 220,),clr: Color(0xffDEEC8A),image: Image.asset("assets/images/Cactus.png"),price:'\$260',)));
            },
             child: Stack(
              children: [
              
                 Container(
                  margin: EdgeInsets.all(20),
                  child: Image.asset("assets/images/Group 79.png",),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right:  MediaQuery.sizeOf(context).width*0.01,),
                      child: Image.asset("assets/images/Mask Group (1).png",scale: 3,),
                    ),
                  ],
                ),
                    ],
                     ),
           ),
          InkWell(
            onTap: (){
                 nImage="Aloe Vera";
                  pImage="assets/images/Layer 27.png";
                  setState(() {
                    
                  });
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AddTocartPage(plantPic: Image.asset("assets/images/Layer 27.png",width: 200,),clr: Color(0xffF5EDA8),image: Image.asset("assets/images/Aloe Vera.png"),price:'\$210',)));
                },
            child: Stack(
              children: [
              
                 Container(
                  margin: EdgeInsets.all(20),
                  child: Image.asset("assets/images/Group 80.png",),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right:  MediaQuery.sizeOf(context).width*0.01,),
                      child: Image.asset("assets/images/Layer 27.png",scale: 4,),
                    ),
                  ],
                ),
                    ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 22,right: MediaQuery.sizeOf(context).width*0.7),
            width: MediaQuery.sizeOf(context).width*0.2,
            height: MediaQuery.sizeOf(context).width*0.02,
            color: Colors.black,
          ),
          Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30,top: 20,bottom: 20),
                    child: Image.asset("assets/images/Plant a Life.png"),
                  ),
                ],
              ),
              Row(
                
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30,top: 0,bottom: 20),
                    child: Image.asset("assets/images/Live amongst Living.png"),
                  ),
                ],
              ),
              Row(
               
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30,top: 0,bottom: 20),
                    child: Image.asset("assets/images/Spread the joy.png",),
                  ),
                ],
              ),
               SizedBox(height:  MediaQuery.sizeOf(context).height*0.1, ),
         
          
        ],
      ),
    );
  }
}