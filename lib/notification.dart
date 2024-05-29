import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:plantify/Bottomnavigationbar.dart';
import 'package:plantify/Order.dart';

class MyNotificationPage extends StatefulWidget {
  const MyNotificationPage({super.key});

  @override
  State<MyNotificationPage> createState() => _MyNotificationPageState();
}

class _MyNotificationPageState extends State<MyNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 255,
        flexibleSpace: Column(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  InkWell(
                      onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyBottomNavigationBarPage()));
                      },
                      child: Image.asset("assets/images/Group 36.png")),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.00,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Image.asset("assets/images/Logo (3).png",scale:7,),
              ),
           ],
          ),
           SizedBox(
            height: MediaQuery.sizeOf(context).height*0.03,
          ),
               Row(
                 children: [
                   Container(
                      margin: EdgeInsets.only(left: 18),
                      child: Text("Notification",style: TextStyle(fontSize: 35,color: Color(0xff0D986A),fontWeight: FontWeight.bold),),
                                 ),
                 ],
               )
        
        ],),
      
      ),

      endDrawer:Drawer(
        backgroundColor: Color(0xff0D986A),
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
                  margin: EdgeInsets.all(20),
                  child: Image.asset("assets/images/Menu.png",),
                ),
              ),
                       ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  // margin: EdgeInsets.all(20),
                  child: Image.asset("assets/images/Group 52.png",),
                ),
                SizedBox(
            width: MediaQuery.sizeOf(context).width*0.1,
          ),
               Container(
                  
                  child: Text("Shop",style: TextStyle(fontSize: 25,color: Colors.white),),
                             )
            ],
          ),
           
           SizedBox(
            height: MediaQuery.sizeOf(context).height*0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  // margin: EdgeInsets.all(20),
                  child: Image.asset("assets/images/Group 142.png",),
                ),
                SizedBox(
            width: MediaQuery.sizeOf(context).width*0.08,
          ),
               Container(
                  
                  child: Text("Plant Care",style: TextStyle(fontSize: 25,color: Colors.white),),
                             )
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  // margin: EdgeInsets.all(20),
                  child: Image.asset("assets/images/Group 143.png",),
                ),
                SizedBox(
            width: MediaQuery.sizeOf(context).width*0.08,
          ),
               Container(
                  
                  child: Text("Community",style: TextStyle(fontSize: 25,color: Colors.white),),
                             )
            ],
          ),
           SizedBox(
            height: MediaQuery.sizeOf(context).height*0.04,
          ),
          InkWell(
             onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyOrder()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    // margin: EdgeInsets.all(20),
                    child: Image.asset("assets/images/Group 144.png",),
                  ),
                  SizedBox(
              width: MediaQuery.sizeOf(context).width*0.08,
            ),
                 Container(
                    
                    child: Text("My Account",style: TextStyle(fontSize: 25,color: Colors.white),),
                               )
              ],
            ),
          ),
           SizedBox(
            height: MediaQuery.sizeOf(context).height*0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  // margin: EdgeInsets.all(20),
                  child: Image.asset("assets/images/Group 125.png",),
                ),
                SizedBox(
            width: MediaQuery.sizeOf(context).width*0.08,
          ),
               Container(
                  
                  child: Text("Track Order",style: TextStyle(fontSize: 25,color: Colors.white),),
                             )
            ],
          ),
           SizedBox(
            height: MediaQuery.sizeOf(context).height*0.07,
          ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
               Container(
                  
                  child: Text("Get The Dirt.",style: TextStyle(fontSize: 25,color: Colors.white),),
                             )
            ],
          ),
            SizedBox(
            height: MediaQuery.sizeOf(context).height*0.00,
          ),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 20),
            child: TextField(
          
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
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
               Container(
                  
                  child: Text("FAQ",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                             )
            ],
          ),
           SizedBox(
            height: MediaQuery.sizeOf(context).height*0.01,
          ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
               Container(
                  
                  child: Text("ABOUT US",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                             )
            ],
          ),
           SizedBox(
            height: MediaQuery.sizeOf(context).height*0.01,
          ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
               Container(
                  
                  child: Text("CONTACT US",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                             )
            ],
          ),
         

           
          ],
        ),
      ) ,

      body: StreamBuilder(stream: FirebaseFirestore.instance.collection("notification").snapshots(),
      builder: (context,snapshot){

       if(snapshot.connectionState==ConnectionState.active){
           if(snapshot.hasData){
               return ListView.builder(
                
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context,index){
                   var plantName=snapshot.data!.docs[index]["NotiPlantName"];
                   var notiTime=snapshot.data!.docs[index]["time"];
                  var plantPic=snapshot.data!.docs[index]["image"];
                  return Container(
                    margin: EdgeInsets.all(12),
                    child: Card(
                   color: Color(0xff9CE5CB),
                      child: ListTile(
                        leading: Container(
                          child:Image.asset(plantPic) ,
                        ),
                        title: Container(
                            child: Text(plantName,style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                             ),
                             subtitle: Container(
                            child: Text(notiTime,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                             ),
                             trailing: InkWell(
                              onTap: ()async {
                                var id=snapshot.data!.docs[index].id;
                                await FirebaseFirestore.instance.collection("notification").doc(id).delete();
                              },
                              child: Container(
                                child: Icon(Icons.delete_outline,color: Colors.black,size: 30,),
                              ),
                             ),
                             
                      ),
                      
                    ),
                  );
               });

           }else if(snapshot.hasError){

           }
       }else{
        return Center(
          child: CircularProgressIndicator(
            color: Colors.black,
          ),
        );
       }

        return Container();
      },
      ),
    );
  }
}