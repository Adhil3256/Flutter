import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class JsonComments extends StatefulWidget {
  const JsonComments({super.key});

  @override
  State<JsonComments> createState() => _JsonCommentsState();
}

class _JsonCommentsState extends State<JsonComments> {
  Map<String,dynamic> bodyData={};
  List myList=[];
  // Future<Nation> getNation() async{
  //   try{
  //   var apiResponse=await http.get(Uri.parse("https://api.nationalize.io/?name=nathaniel"));
  //   bodyData=jsonDecode(apiResponse.body);
  //   print(bodyData);
  //   myList=bodyData["country"];
  //   print(myList);
  //   if(apiResponse.statusCode==200||apiResponse==201){
  //     return Nation.fromJson(bodyData);
  //   }
  //   else{
  //     print(apiResponse.statusCode);
  //     throw Exception(("Failed to load data"));
  //   }}
  //   catch(e){
  //     throw Exception(e);
  //   }
  // }

  Future<Map<String,dynamic>> getNation() async{
    try{
      var apiResponse=await http.get(Uri.parse("https://api.nationalize.io/?name=nathaniel"));
      bodyData=jsonDecode(apiResponse.body);
      print(bodyData);
      myList=bodyData["country"];
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
           Text(bodyData["count"].toString()),
           Text(bodyData["name"]),

           Expanded(
             child: ListView.builder(
              itemCount:myList.length ,
                itemBuilder:(context,int index){
                  return Container(
                   height: 50,
                   width: 100,
                   child: Column(
                     children: [
                       Text(myList[index]["country_id"]),
                       Text(myList[index]["probability"].toString())
                     ],
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


/////////////////////////////////////////////////////////////////////////////////////////
// class Nation {
//   int? count;
//   String? name;
//   List<Country>? country;
//
//   Nation({this.count, this.name, this.country});
//
//   Nation.fromJson(Map<String, dynamic> json) {
//     count = json['count'];
//     name = json['name'];
//     if (json['country'] != null) {
//       country = <Country>[];
//       json['country'].forEach((v) {
//         country!.add(new Country.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['count'] = this.count;
//     data['name'] = this.name;
//     if (this.country != null) {
//       data['country'] = this.country!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Country {
//   String? countryId;
//   double? probability;
//
//   Country({this.countryId, this.probability});
//
//   Country.fromJson(Map<String, dynamic> json) {
//     countryId = json['country_id'];
//     probability = json['probability'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['country_id'] = this.countryId;
//     data['probability'] = this.probability;
//     return data;
//   }
// }

