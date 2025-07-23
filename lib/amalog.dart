


import 'package:flutter/material.dart';
import 'package:project1/botnavi.dart';




class LV extends StatefulWidget {
  const LV({super.key});

  @override
  State<LV> createState() => _LVState();
}

class _LVState extends State<LV> {
  final keyy=GlobalKey<FormState>();
  bool a = false;
  bool b = true;

  TextEditingController ctrl = TextEditingController();
  TextEditingController ctrl1 = TextEditingController();
  TextEditingController ctrl2 = TextEditingController();
  TextEditingController ctrl3 = TextEditingController();

  vi()
  {
    setState(() {
      ctrl.text.isNotEmpty  &&  ctrl1.text.isNotEmpty &&  ctrl2.text.isNotEmpty &&  ctrl3.text.isNotEmpty? a = true : a =false;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("login"),),
        backgroundColor: Colors.blue[200],
      ),
      body: Form(
        key: keyy,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(

                controller: ctrl,
                onChanged: (i){
                  vi();
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  // icon: Icon(Icons.person),
                  hintText: "Enter Name",
                  border: OutlineInputBorder(),
                ),
                validator: (input){
                  if(input==null || input.isEmpty ){
                    return "Please enter valid username";
                  }
                },

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: ctrl1,
                onChanged: (i){
                  vi();
                },
                decoration: InputDecoration(
                  prefixIcon:  Icon(Icons.mail),
                  hintText: "Enter your Mail id",
                  border: OutlineInputBorder(),
                ),
                validator: (input){
                  if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(input!))
                  {
                    return "Enter valid mail";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: ctrl2,
                onChanged: (i){
                  vi();
                },
                decoration: InputDecoration(

                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      b=!b;

                    });
                  },
                    icon: Icon(Icons.remove_red_eye),
                  ),
                  hintText: "Enter Password",
                  border: OutlineInputBorder(),
                ),

                validator: (input){
                        if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(input!))
                        {
                          return "Enter Valid Passwords";
                        }
                        return null;
              },
              obscureText: b,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: ctrl3,
                onChanged: (i){
                  vi();
                },
                decoration: InputDecoration(
                  prefixIcon:  Icon(Icons.numbers),
                  hintText: "Enter your number",
                  border: OutlineInputBorder(),
                ),

                validator: (input){
                  if(!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(input!)){
                    return "Pleas enter valid phone number";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Visibility(
                visible: a,
                child: ElevatedButton(
                    onPressed: (){
                      if(keyy.currentState!.validate()){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("success")));
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const Botnavi()),
                        // );
                      }
                    }, child: Text('login')),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blue[100],
    );
  }
}
