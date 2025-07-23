import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class CatFact extends StatefulWidget {
  const CatFact({super.key});

  @override
  State<CatFact> createState() => _CatFactState();
}

class _CatFactState extends State<CatFact> {
  Map<String,dynamic> bodyData={};
  Future<CatClass> getData() async{
    try {
      var apiResponse = await http.get(Uri.parse("https://ipinfo.io/161.185.160.93/geo"));
      bodyData = jsonDecode(apiResponse.body);
      if (apiResponse.statusCode == 200 || apiResponse.statusCode == 201) {
        print(bodyData);
        print(apiResponse.statusCode);
        return CatClass.fromJson(bodyData);
      }
      else {
        throw Exception("Failed to load data");
      } 
    }
    catch(e){
      throw Exception(e);
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:FutureBuilder(future: getData(), builder: (context,snapshot){
      if(snapshot.connectionState==ConnectionState.waiting){
        return CircularProgressIndicator();
      }
      else if(snapshot.hasError){
        return Text("error:${snapshot.error}");
      }
      else if(snapshot.hasData){
        return Column(
          children: [
            Text("IP:${bodyData["ip"]}"),
            Text("City:${bodyData["city"]}"),
            Text("Rigeon:${bodyData["region"]}"),
            Text("Country:${bodyData["country"]}"),
            Text("Loc:${bodyData["loc"]}"),
            Text("Org:${bodyData["org"]}"),
            Text("Postal:${bodyData["postal"]}"),
            Text("Timezone:${bodyData["timezone"]}"),
            Text("URL:${bodyData["readme"]}"),

            // Text(bodyData["length"].toString())
          ],
        );
      }
      else{
        return Text("No Data found");
      }
    })
    );
  }
}

class CatClass {
  String? fact;
  int? length;

  CatClass({this.fact, this.length});

  CatClass.fromJson(Map<String, dynamic> json) {
    fact = json['fact'];
    length = json['length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fact'] = this.fact;
    data['length'] = this.length;
    return data;
  }
}

