import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:plantify/Bottomnavigationbar.dart';
import 'package:plantify/HomeView.dart';
import 'package:plantify/drawer.dart';



class checkOutPage extends StatefulWidget {
  const checkOutPage({super.key});

  @override
  State<checkOutPage> createState() => _checkOutPageState();
}

class _checkOutPageState extends State<checkOutPage> {
var count=1;

num totalPlantPrice=400+350+80;
List<num>priceList=[];

var time=DateTime.now();
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    
      ),

      endDrawer:Drawer(
         backgroundColor: Color(0xff0D986A),
        child: drawerCode.menu_method(context)
      ) ,
    

      body: Column(
        children: [
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
           
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,bottom: 8,top: 8),
                child: Image.asset("assets/images/Logo (3).png",scale:7,),
              ),
           ],
          ),
          Row(
            children: [
              Container(
                    margin: EdgeInsets.only(left: 20,right: 20,bottom: 8,top: 10),
                    child: Image.asset("assets/images/Your Bag.png",),
                  ),
            ],
          ),
          
          StreamBuilder(stream: FirebaseFirestore.instance.collection("user").snapshots(), builder: (context,snapshot){
            if(snapshot.connectionState==ConnectionState.active){
              if(snapshot.hasData){
              //     List<DocumentSnapshot> documents = snapshot.data!.docs;
              //     double totalPrice = documents.fold(0, (total, document) => total + document['price']);

              // totalPlantPrice=priceList.fold(0, (num sum, num element) => sum + element);
     
                 return Expanded(
                   child: ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context,index){

                      var totalPrice=snapshot.data!.docs[index]["price"];

                       String cleanedPrice = totalPrice.replaceAll("\$", "");
                       priceList.add(int.parse(cleanedPrice));

                      var plantName=snapshot.data!.docs[index]["name"];
                      var plantPrice=snapshot.data!.docs[index]["price"];
                      var plantPic=snapshot.data!.docs[index]["image"];
                       
                      
                     
                      return  Container(
                        margin: EdgeInsets.only(top:  MediaQuery.sizeOf(context).height*0.01),
                        child: Card(
                          color: Color(0xff9CE5CB),
                                  child: ListTile(
                                    leading: Container(
                        child: Image.asset(plantPic,scale: 0.5,),
                                    ),
                                    
                                    title:  Container(
                                  child: Text(plantName,style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                                   ),        
                        subtitle: Row(
                        children: [
                        InkWell(
                          onTap: (){
                            count++;
                            setState(() {
                              
                            });
                          },
                            child: Container(
                              
                                          child: Image.asset("assets/images/Group 114.png",),
                                        ),
                          ),
                                    
                                    Container(
                        margin:EdgeInsets.only(left: 12),
                        child:  Text("${count.toString()}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff0D986A)),),
                                    ),
                                    InkWell(
                        onTap: (){
                          count--;
                          setState(() {
                            
                          });
                        },
                        
                        child: Container(
                          margin:EdgeInsets.only(left: 12),
                          child: Image.asset("assets/images/Group 1151.png",),
                        ),
                                    ),
                                    InkWell(
                 
                                      onTap:()async{
                                        var id=snapshot.data!.docs[index].id;
                                        await FirebaseFirestore.instance.collection("user").doc(id).delete();
                                      },
                                      child: Container(
                                                      margin:EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.2),
                                                      child: Image.asset("assets/images/Group 123.png")
                                      ),
                                    ),
                        ],
                                     ),
                                     trailing: Container(
                                  child: Text(plantPrice,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                                   ),
                                  ),
                                ),
                      );
                   }),
                 );

              }
              
              else if(snapshot.hasError){
                   return Center(child: Text("${snapshot.hasError.toString()}"),);
              }
            }
            else{
                      return Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              );
            }
            return Container(
            );
          }
          
          ),
          SizedBox(height:  MediaQuery.sizeOf(context).height*0.01, ),
          Container(
            margin: EdgeInsets.only(left: 12,right: 12,),
            child: Image.asset("assets/images/Group 129.png",scale: 0.8,)
          
          ,),

          //////////////
          SizedBox(height:  MediaQuery.sizeOf(context).height*0.01, ),
          Container(
            margin: EdgeInsets.only(left: 16,right: 16),
            child: ListTile(
              
              leading:  Container(child: Text("Total",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),)),
              trailing: Container(child: Text("\$${totalPlantPrice}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),)),

            ),
          ),

           SizedBox(height:  MediaQuery.sizeOf(context).height*0.01, ),
          InkWell(
            onTap: ()async{
              
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
                  
                  child: Text("Your order has been successfully processed. Thank you for shopping with Plantify!",style: TextStyle(color: Color(0xff002140),fontSize: 18,fontWeight: FontWeight.bold,wordSpacing: 1.5),))),
              backgroundColor:Color(0xff9CE5CB),
              elevation: 10,
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.all(5),
            )
            );
            
                     var nImageNoti=nImage;
                     var pPlaNoti=pImage;
                              
                     await FirebaseFirestore.instance.collection("notification").doc().set({
                        "image":pPlaNoti,
                        "NotiPlantName":"🎉 Your order has been placed successfully! Thank you for shopping with Plantify!",
                        "time":"${time.hour}:${time.minute}",
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
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(left: 50,right: 50),
              width: MediaQuery.sizeOf(context).width,
              child: Center(child: Text("Checkout",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
           SizedBox(height:  MediaQuery.sizeOf(context).height*0.02, ),


        ],
      ),
    );
  }
}