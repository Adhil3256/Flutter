import 'package:flutter/material.dart';
class task2 extends StatefulWidget {
  const task2({super.key});

  @override
  State<task2> createState() => _task2State();
}

class _task2State extends State<task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff180043),
      body:
      Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              height: 390,
              width: 350,
              decoration: BoxDecoration(
                gradient:LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff22009c),
                      Color(0xff1f005c),
                      Color(0xff180043),
                    ]),
                borderRadius: BorderRadius.circular(30)
              ),
              child:
              Column(
                children: [
                  Row(children: [
                    SizedBox(width: 300,),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Icon(Icons.more_vert,color: Colors.white,),
                    )
                  ],),
                  
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(colors:[
                              Color(0xff5600ff),
                              Color(0xff8802f4)
                            ])
                        ),

                      ),
                    ),
                  ),
                  Text("Joey Trip",
                    style: TextStyle(
                        fontSize: 20,color: Colors.deepPurple),),
                  Text("Graphics Design",
                    style: TextStyle(
                        fontSize: 8,color: Colors.white),),
                 SizedBox(height: 100,),
                 Row(children: [
                   SizedBox(width: 70,),
                   Text("134",style: TextStyle(fontSize: 40,color: Colors.white),),
                   SizedBox(width: 70,),
                   Text("25k",style: TextStyle(fontSize: 40,color: Colors.white),),
                 ],),
                  SizedBox(height: 1,),
                  Row(children: [
                    SizedBox(width: 90,),
                    Text("Projects",style: TextStyle(fontSize: 10,color: Colors.white),),
                    SizedBox(width:90,),

                    Text("Earned",style: TextStyle(fontSize: 10,color: Colors.white),),
                  ],),
                ],
              ),
            ),
          ),
        ),
    Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
        height: 200,
        width: 350,
        decoration: BoxDecoration(
        gradient:LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
        Color(0xff22009c),
        Color(0xff1f005c),
        Color(0xff180043),
        ]),
        borderRadius: BorderRadius.circular(30)
        ),
          child:
          Row(
            children: [
              SizedBox(width: 30,),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(colors:[
                      Color(0xff5600ff),
                      Color(0xff8802f4)
                    ])
                ),
                child: Column(children: [
                  SizedBox(height: 20,),
                  Text("25",style: TextStyle(fontSize: 20,color: Colors.white),),

                  Text("Friday",style: TextStyle(fontSize: 14,color: Colors.white),),

                ],),

              ),
              SizedBox(width: 40,),
              Column(
                children: [
                  SizedBox(height: 80,),
                  Text("Upcoming",style: TextStyle(fontSize: 15,color: Colors.white),),
                  Text("Projects",style: TextStyle(fontSize: 15,color: Colors.white),),

                ],
              ),
              SizedBox(width: 40,),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(colors:[
                      Color(0xff5600ff),
                      Color(0xff8802f4)
                    ])
                ),
                child: Center(
                  child: Icon(
                    Icons.keyboard_arrow_right,size: 40,color:Colors.white,),
                ),

              ),

            ],

          ),
            ),
      ),)
    ],
    ),
    );
  }
}
