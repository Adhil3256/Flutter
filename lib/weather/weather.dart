import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class weather extends StatefulWidget {
  const weather({super.key});

  @override
  State<weather> createState() => _weatherState();
}

class _weatherState extends State<weather> {
  TextEditingController ctrl=TextEditingController();
  Map<String,dynamic> bodyData={};
  Map<String,dynamic> bodyData2={};
  List myList=[];
  // String lat(){
  //   try{
  //     return bodyData["coord"]["lat"].toString();
  //   }
  //   catch(_){
  //     return "";
  //   }
  // }
  Future<void> getNation() async{
    try {
      final city = ctrl.text;
      if (city.isNotEmpty) {
        var apiResponse = await http.get(Uri.parse(
            "https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=8dc423b53c82ffcc5375d7062b54dee6"));
        bodyData = jsonDecode(apiResponse.body);
        print(bodyData);
        // print("Latitude:${lat()}"??"null");
        myList = bodyData["weather"];
        bodyData2 = myList[0];
        // print(myList);
        if (apiResponse.statusCode == 200 || apiResponse == 201) {
          print(bodyData);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Weather details fetched successfully")));
        }
        else {
          //   print(apiResponse.statusCode);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to load data")));

        }
      }
    }
    catch(e){
      print(e);
      throw Exception(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Column(
          children: [
            TextFormField(
            controller: ctrl,),
            ElevatedButton(onPressed: (){
              setState(() {
                getNation();
              });
            },child: Text("Get Weather"), ),
            SizedBox(height: 10,),
            bodyData.isNotEmpty?Column(
              children: [
                Text(bodyData2["coord"]["lat"].toString()),
                Text(bodyData2["coord"].toString()),
                Text(bodyData2["description"].toString()),
                Text(bodyData2["icon"].toString()),
              ],



    ):Text("Please enter city name"),
                ]),
    );
              }


  }

