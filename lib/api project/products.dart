import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:http/http.dart' as http;

import 'ProviderClass.dart';
import 'apipd.dart';
class apiproducts extends StatefulWidget {
  const apiproducts({super.key});

  @override
  State<apiproducts> createState() => _apiproductsState();
}

class _apiproductsState extends State<apiproducts> {
  var bodyData={};
  var catbodyData={};

  List myList=[];
  List myCategories=[];
  Future<Map> getNation() async{
    try{
      var apiResponse=await http.get(Uri.parse("https://dummyjson.com/products"));
      bodyData=jsonDecode(apiResponse.body);
      print(bodyData);
      myList=bodyData["products"];
      print(myList);
      List cat=myList.map((onePdt)=>onePdt["category"]).toList();

      print(cat.toSet());
      if(apiResponse.statusCode==200||apiResponse==201){
        return bodyData;
      }
      else{
        print(apiResponse.statusCode);
        throw Exception(("Failed to load data"));
      }}
    catch(e){
      throw Exception(e);
    }
  }

  // Future<Map> getcat() async{
  //   try{
  //     var apiResponse=await http.get(Uri.parse("https://dummyjson.com/products/category-list"),);
  //
  //     catbodyData=jsonDecode(apiResponse.body);
  //     print(bodyData);
  //     myList=bodyData["products"];
  //     print(myList);
  //     if(apiResponse.statusCode==200||apiResponse==201){
  //       return bodyData;
  //     }
  //     else{
  //       print(apiResponse.statusCode);
  //       throw Exception(("Failed to load data"));
  //     }}
  //   catch(e){
  //     throw Exception(e);
  //   }
  // }



  @override
  Widget build(BuildContext context) {
    final cartObj=Provider.of<ProviderClass>(context);
    //int countOfPdts=cartObj.cartProducts.length;
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.menu),
        title: Container(
          height: 40,
          width: 500,
          child: TextFormField(
            decoration: InputDecoration(

              labelText: "Search",
              border: OutlineInputBorder(),


              prefixIcon: Icon(Icons.search,size: 20,),

              suffixIcon: Icon(Icons.photo_camera,size: 20,)
            ),
          ),
        ),

        actions: [
        CircleAvatar(
          radius: 18,
          child: Text(
            cartObj.pdtCount.toString()

          ),

        ),
    ]),
        body: FutureBuilder(future: getNation(), builder: (context,snapshot)
    {
          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          else if(snapshot.hasError){
            return Text("error:${snapshot.error}");
          }
          else if(snapshot.hasData){
            return SingleChildScrollView(
              child: Column(
                children: [
              // Container(
              //   color: Colors.cyan,
              //    height: 180,
              //
              //    child: ListView.builder(
              //      scrollDirection: Axis.horizontal,
              //        itemCount: lis2.length,
              //        itemBuilder: (BuildContext context, int pageViewIndex) {
              //          return Padding(
              //            padding: const EdgeInsets.all(7.0),
              //            child: GestureDetector(
              //              onTap: (){
              //                Navigator.push(
              //                  context,
              //                  MaterialPageRoute(builder: (context) => const pd()),
              //                );
              //              },
              //              child: Container(
              //                height: 150,
              //                width: 150,
              //                decoration: BoxDecoration(
              //                    border:Border.all(),
              //                    image: DecorationImage(
              //                image: AssetImage(lis2[pageViewIndex].image),
              //                                     fit: BoxFit.fill)
              //
              //              ),
              //              ),
              //            ),);
              //        }
              //    ),
              //  ),
                  // Text(bodyData["count"].toString()),
                  // Text(bodyData["name"]),
              
                  GridView.builder(
                       shrinkWrap: true,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         childAspectRatio: 0.6,
                       crossAxisCount: 2,
                        mainAxisSpacing: 20,
                      crossAxisSpacing: 1,
                       ),
                       itemCount: myList.length,
                       itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: GestureDetector(
                    onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>appd(a: myList[index])));
                         },
                        child: Container(
                              height: 700,
                          width: 250,
                          color: Colors.white,
                        
                          child: Column(
                            children: [
                        
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(myList[index]["title"],style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold)),
                              ),
                                 Container(
                                  height:175,
                                  width: 220,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                      image:DecorationImage(
                                          image: NetworkImage(myList[index]["images"][0])
                        
                                      )
                                  ),
                        
                                ),
                        
                              // Text(myList[index]["description"]),
                              Text("\$${myList[index]["price"].toString()}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              ReadMoreText(myList[index]["description"].toString(),
                                trimMode: TrimMode.Line,
                                trimLines: 1,
                                ),
                        
                            ],
                          ),
                        ),
                      ),
                    );
                        }
                        )
              
                        ],
                        ),
            );
          }
          

          else{
            return Text("No Data found");
          }
        }

        )

  );

  }
}
