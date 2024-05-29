import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:plantify/Bottomnavigationbar.dart';
import 'package:plantify/HomeView.dart';
import 'package:plantify/notification.dart';
import 'package:plantify/drawer.dart';

class AddTocartPage extends StatefulWidget {
 AddTocartPage({super.key,required this.plantPic,required this.price,required this.clr,required this.image});

  final Image plantPic;
  final String price;
  final Image image;
  final Color clr;


  
  @override
  State<AddTocartPage> createState() => _AddTocartPageState();
}

class _AddTocartPageState extends State<AddTocartPage> {

  var time=DateTime.now();

  Icon favIcon=Icon(Icons.favorite_border_outlined);
  bool isCheckFavImage=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.clr,
        leading: InkWell(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyBottomNavigationBarPage()));
          },
          child: Image.asset("assets/images/Group 36.png")),
      ),

      endDrawer:Drawer(
        backgroundColor: Color(0xff0D986A),
        child: drawerCode.menu_method(context)
      ) ,


      //////////////////
      
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
            height: MediaQuery.sizeOf(context).height*0.5,
            decoration: BoxDecoration(
              color: widget.clr,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(200))
            
            ),
            child: Column(
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
          SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
          Container(
            margin: EdgeInsets.only(left:MediaQuery.sizeOf(context).width*0.06,right: MediaQuery.sizeOf(context).width*0.07, ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Row(
                    children: [
                      Container(
                    child: Text("Air Purifier",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),),
                    SizedBox(width: 12,),
                   Image.asset("assets/images/Group 66.png",scale: 0.8,),
                    ],
                  ),
                  
                   Image.asset("assets/images/Group 111.png",scale: 0.8,)
              ],
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
          Container(
            margin: EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.05,),
            child: Row(
              children: [
                Container(
                  child: widget.image,
                  
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
           Container(
            margin: EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.065),
             child: Row(
               children: [
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Container(
                        child: Text("PRICE",style: TextStyle(fontSize: 18,color: Color(0xff002140),fontWeight: FontWeight.w300),),),
                Container(
                        child: Text(widget.price,style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold),),),
             
                   ],
                 ),
               ],
             ),
           ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
           Container(
            margin: EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.06),
             child: Row(
               children: [
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Container(
                        child: Text("SIZE",style: TextStyle(fontSize: 18,color: Color(0xff002140),fontWeight: FontWeight.w300),),),
                        Container(
                        child: Text('5’’ h',style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold),),),
             
                   ],
                 ),
               ],
             ),
           ),
         
              ],
            ),
          ),
         
           Container(
            margin: EdgeInsets.only(top: MediaQuery.sizeOf(context).height*0.45,),
             child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 7),
                  child:  Image.asset("assets/images/Group 60.png",scale: 0.8,),
                ),
                InkWell(
                  onTap: ()async {
                    

                    if(isCheckFavImage){
                       favIcon=Icon(Icons.favorite);
                       isCheckFavImage=false;
                        setState(() {
                      
                        });

                        var pri=widget.price;
                        var nIma=nImage;
                        var pPla=pImage;
                              
                        ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                        
                      content: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)
                          ),
                        padding: EdgeInsets.all(5),
                        child: Center(child: Text('Item added to favorites!',style: TextStyle(color: Color(0xff002140),fontSize: 22,fontWeight: FontWeight.bold),))),
                      backgroundColor:widget.clr,
                      elevation: 10,
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.all(5),
                    )
                    );

                       await FirebaseFirestore.instance.collection("favourite").doc().set({
                        "image":pPla,
                        "favPlantName":nImage,
                        "plantPrice":pri.toString()
                       });
                    }else{
                       favIcon=Icon(Icons.favorite_border_outlined);
                       isCheckFavImage=true;
                    }
                    
                    setState(() {
                      
                    });

                     var nImageNoti=nImage;
                     var pPlaNoti=pImage;
                              
                     await FirebaseFirestore.instance.collection("notification").doc().set({
                        "image":pPlaNoti,
                        "NotiPlantName":"🌿 ${nImageNoti} has been added to your favorites!",
                        "time":"${time.hour}:${time.minute}",
                       });


                 
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                    ),
                    child:  favIcon
                  ),
                )
              ],
                     ),
           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Container(
                margin: EdgeInsets.only(top: MediaQuery.sizeOf(context).height*0.26,left: MediaQuery.sizeOf(context).width*0.22 ),
               child: widget.plantPic,
                
               ),
             ],
           ),
          

            ],
          ),
           SizedBox(height: MediaQuery.sizeOf(context).height*0.00,),
          Container(
            margin: EdgeInsets.only(left: 25,right: 25),
            child: Image.asset("assets/images/Group 99.png",scale: 0.7,),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
           Container(
            margin: EdgeInsets.only(left: 25,right: 25),
            child: Image.asset("assets/images/Group 82.png",scale: 0.6,),
          ),
           SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
          InkWell(
            onTap: () async{
              var pri=widget.price;
              var nIma=nImage;
              var pPla=pImage;

               ScaffoldMessenger.of(context).showSnackBar(
               SnackBar(
                
              content: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)
                  ),
                padding: EdgeInsets.all(5),
                child: Center(child: Text('Item added to cart successfully!',style: TextStyle(color: Color(0xff002140),fontSize: 22,fontWeight: FontWeight.bold),))),
              backgroundColor:widget.clr,
              elevation: 10,
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.all(5),
            )
            );
             
              await FirebaseFirestore.instance.collection("user").doc().set({
                "image":pPla,
                "name":nIma,
                "price":pri.toString(),
              
              });

                     var nImageNoti=nImage;
                     var pPlaNoti=pImage;
                              
                     await FirebaseFirestore.instance.collection("notification").doc().set({
                        "image":pPlaNoti,
                        "NotiPlantName":"🛒 ${nImageNoti} has been added to your cart!",
                        "time":"${time.hour}:${time.minute}"
                       });
           
           
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
              padding: EdgeInsets.all(16.5),
              margin: EdgeInsets.only(left: 50,right: 50),
              width: MediaQuery.sizeOf(context).width,
              child: Center(child: Text("Add to cart",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
           SizedBox(height:  MediaQuery.sizeOf(context).height*0.1, ),
              
        ]
    ));
  }
}