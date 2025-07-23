import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class JsonComments2 extends StatefulWidget {
  const JsonComments2({super.key});

  @override
  State<JsonComments2> createState() => _JsonComments2State();
}

class _JsonComments2State extends State<JsonComments2> {
  Map<String,dynamic> bodyData={};
  List myList=[];
  Future<Map<String,dynamic>> getNation() async{
    try{
      var apiResponse=await http.get(Uri.parse("https://dummyjson.com/quotes"));
      bodyData=jsonDecode(apiResponse.body);
      print(bodyData);
      myList=bodyData["quotes"];
      print(myList);
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(future: getNation(), builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            return CircularProgressIndicator();
          }
          else if(snapshot.hasError){
            return Text("error:${snapshot.error}");
          }
          else if(snapshot.hasData){
            return Column(
              children: [
                // Text(bodyData["count"].toString()),
                // Text(bodyData["name"]),

                Expanded(
                  child: ListView.builder(
                      itemCount:myList.length ,
                      itemBuilder:(context,int index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Text(myList[index]["id"].toString()),
                                Text(myList[index]["quote"].toString()),
                                Text(myList[index]["author"].toString())
                              ],
                            ),
                          ),
                        );
                      }),
                )

              ],
            );
          }
          else{
            return Text("No Data found");
          }
        }));
  }
}
