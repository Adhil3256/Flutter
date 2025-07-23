import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class StudentRecord extends StatefulWidget {
  const StudentRecord({super.key});

  @override
  State<StudentRecord> createState() => _StudentRecordState();
}

class _StudentRecordState extends State<StudentRecord> {
  late Future<Map<String,dynamic>> latedata;
  void initState(){
    super.initState();
    latedata=getNation();
  }
  Map<String,dynamic> bodyData={};
  List myList=[];
  TextEditingController id=TextEditingController();
  TextEditingController name=TextEditingController();
  TextEditingController rollno=TextEditingController();
  TextEditingController year=TextEditingController();
  TextEditingController dept=TextEditingController();
  TextEditingController gender=TextEditingController();
  Future<void> addStudent() async{
    try {
      var apiResponse = await http.post(Uri.parse("http://92.205.109.210:8051/api/create"),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({


            // "_id": "686caad3dd65373e8c7047d6",
           // "studentId": id.text.toString(),
            "name": name.text,
            "rollno": rollno.text.toString(),
            "year": year.text.toString(),
            "department": dept.text,
            "gender": gender.text
          })
      );
       bodyData=jsonDecode(apiResponse.body);
       name.clear();
      if (apiResponse.statusCode==200||apiResponse.statusCode==201){
        print(bodyData["message"]);
        setState(() {
          latedata=getNation();
        });
      }
      else{
        print("Failed to add data");
        throw Exception("Failed to add");
      }
    }
    catch(e){
      throw Exception(e);
    }
  }
  Future<Map<String,dynamic>> getNation() async{
    try{
      var apiResponse=await http.get(Uri.parse("http://92.205.109.210:8051/api/getall"));
      bodyData=jsonDecode(apiResponse.body);
      print(bodyData);
      myList=bodyData["data"];
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
      body: Column(
        children: [
          // TextFormField(
          //   controller: id,
          // ),
          TextFormField(
            controller: name,
          ),
          TextFormField(
            controller: rollno,
          ),
          TextFormField(
            controller: year,
          ),
          TextFormField(
            controller: dept,
          ),
          TextFormField(controller: gender,),
          ElevatedButton(onPressed: (){addStudent();}, child: Text("Add Student")),
          SizedBox(
            height: 20,
          ),


          // Text(bodyData["count"].toString()),
    // Text(bodyData["name"]),

    Expanded(
    child: FutureBuilder(
      future: latedata,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      return ListView.builder(
          itemCount:myList.length ,
          itemBuilder:(context,int index){
            var student=myList[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 100,
                child: Column(
                  children: [
                    Text(student["name"].toString()),
                    Text(student["rollno"].toString()),
                    Text(student["department"].toString()),
                    Row(

                      // children: [
                      //   IconButton(onPressed: (){
                      //     // showDialog(context: context, builder: buildconte)
                      //     popUp(student["id"],student);},
                      //       icon: Icon(Icons.edit )),
                      //   IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                      // ],
                    )
                  ],
                ),
              ),
            );
          }
          );
      },
    ),
    )


        ],
      ),
    );
  }
}
