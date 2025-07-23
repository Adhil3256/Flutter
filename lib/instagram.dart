import 'package:flutter/material.dart';
import 'package:sliver_app_bar_builder/sliver_app_bar_builder.dart';

import 'aset.dart';

class ip extends StatefulWidget {
  const ip({super.key});

  @override
  State<ip> createState() => _spState();
}

class _spState extends State<ip> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext, bool) {
              return [
                SliverAppBar(
                  expandedHeight: 350,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xff1f005c),
                                Color(0xff5b0060),
                                Color(0xffffb56b),
                              ])
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.lock_outlined,
                                  color: Colors.white,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 28.0),
                                child: Text("anirudh_ravichandhran",
                                  style: TextStyle(fontSize: 25,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.arrow_drop_down, color: Colors.white,),
                              )
                            ],),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      image: DecorationImage(
                                          image: AssetImage("assets/ani.jpg"),
                                          fit: BoxFit.fill
                                      ),
                                      shape: BoxShape.circle
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(width: 300,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("1,032", style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("273M", style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("279", style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 300,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Post", style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("followers",
                                            style: TextStyle(color: Colors.white,
                                                fontSize: 15),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("following",
                                            style: TextStyle(color: Colors.white,
                                                fontSize: 15),),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("@nirudh,", style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.white),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(height: 50,),
                                Text("Sai abhiyankar,", style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white),),
                                Text("Devi sri prasad", style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white),),

                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 30,
                                  width: 170,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color(0xff1f005c),
                                            Color(0xff5b0060),
                                            Color(0xffffb56b),
                                          ]),
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all()
                                  ),
                                  child: Center(child: Text("Edit Profile",
                                    style: TextStyle(color: Colors.white),)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 30,
                                  width: 170,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color(0xff1f005c),
                                            Color(0xff5b0060),
                                            Color(0xffffb56b),
                                          ]),
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all()
                                  ),
                                  child: Center(child: Text("Share Profile",
                                    style: TextStyle(color: Colors.white),)),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xff1f005c),
                                          Color(0xff5b0060),
                                          Color(0xffffb56b),
                                        ]),
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all()
                                ),
                                child: Center(child: Icon(
                                  Icons.person_add, color: Colors.white,)),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  bottom:  TabBar(
                      indicator:BoxDecoration(
                        color: Color(0xff5b0060),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Colors.black,
                      dividerColor: Colors.black,
                      tabs: [
                        Tab(
                          icon: Icon(Icons.grid_view_rounded, color: Colors.black,),
                          //child:,
                        ),
                        Tab(
                          icon: Icon(
                            Icons.filter_frames_outlined, color: Colors.black,),
                        ),
                        Tab(
                          icon: Icon(Icons.person_pin_sharp, color: Colors.black,),
                        ),
                      ]),
                ),
              ];
            },
            body: TabBarView(
              children: [
                Container(color: Color(0xffffb56b),
                  child:  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // number of items in each row
                        mainAxisSpacing: 1, // spacing between rows
                        crossAxisSpacing: 1, // spacing between columns
                      ),


                      itemCount: lis4.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(image: AssetImage(lis4[index].image),
                                  fit: BoxFit.fill),
                              shape: BoxShape.rectangle
                          ),
                        );
                      }
                  ),),
                Container(color: Color(0xff1f005c),),
                Container(color: Color(0xff5b0060),),
              ],
            ),
          )
      ),
    );
  }
}


