import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:plantify/Bottomnavigationbar.dart';
import 'package:plantify/drawer.dart';

class MyFavouritePage extends StatefulWidget {
  const MyFavouritePage({super.key});

  @override
  State<MyFavouritePage> createState() => _MyFavouritePageState();
}

class _MyFavouritePageState extends State<MyFavouritePage> {
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
                      child: Text("Favourite",style: TextStyle(fontSize: 35,color: Color(0xff0D986A),fontWeight: FontWeight.bold),),
                                 ),
                 ],
               )
        
        ],),
      
      ),

      endDrawer:Drawer(
       backgroundColor: Color(0xff0D986A),
        child: drawerCode.menu_method(context)
      ) ,

      body: StreamBuilder(stream: FirebaseFirestore.instance.collection("favourite").snapshots(),
      builder: (context,snapshot){

       if(snapshot.connectionState==ConnectionState.active){
           if(snapshot.hasData){
               return ListView.builder(
                
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context,index){
                   var plantName=snapshot.data!.docs[index]["favPlantName"];
                   var plantPrice=snapshot.data!.docs[index]["plantPrice"];
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
                            child: Text(plantPrice,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                             ),
                             trailing: InkWell(
                              onTap: ()async {
                                var id=snapshot.data!.docs[index].id;
                                await FirebaseFirestore.instance.collection("favourite").doc(id).delete();
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