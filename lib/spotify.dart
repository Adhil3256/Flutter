import 'package:flutter/material.dart';
import 'package:sliver_app_bar_builder/sliver_app_bar_builder.dart';

import 'aset.dart';
class sp extends StatefulWidget {
  const sp({super.key});

  @override
  State<sp> createState() => _spState();
}

class _spState extends State<sp> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:NestedScrollView(
            headerSliverBuilder: (BuildContext,bool)
          {
            return [
              SliverAppBar(
                expandedHeight: 450,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors:[
                        Color(0xff1f005c),
                        Color(0xff5b0060),
                        Color(0xffffb56b),])
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Icon(Icons.chevron_left,
                            color: Colors.white,),
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Text("Spotify Music",
                                style: TextStyle(fontSize: 25,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white54
                              ),),
                            ),
                          ],),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 300,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(

                                  decoration: InputDecoration(
                                      fillColor: Colors.transparent,
                                      filled: false,
                                      prefixIconColor: Colors.black,
                                      prefixIcon: Icon(Icons.search),
                                      hintText: "Search...",hintStyle: TextStyle(color: Colors.black),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: Colors.black,width: 10)
                                      ),
                                    // enabledBorder: BorderSide(color: Colors.black),
                                    // focusedBorder: ,


                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 90,
                                decoration: BoxDecoration(color:Colors.transparent,border:Border.all(color: Colors.white30),
                                borderRadius: BorderRadius.circular(20)),
                                child:
                                Center(child: Text("PRESS")),
                              ),
                            )

                          ],
                        ),


                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 200,
                              width: 200,
                             decoration: BoxDecoration(
                               image: DecorationImage(image: AssetImage("assets/music.png"),),
                             ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox(height: 50,),
                              Text("Sai abhiyankar," ,style:TextStyle(decoration:TextDecoration.underline,color: Colors.green),),
                              Text("Devi sri prasad",style:TextStyle(decoration:TextDecoration.underline,color: Colors.green),),

                            ],
                          ),
                        ),
                        SizedBox(height: 0,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("santhosh narayanan",style:TextStyle(decoration:TextDecoration.underline,color: Colors.green),),
                        ),
                        // Text("Sai abhiyankar",style:TextStyle(decoration:TextDecoration.underline,color: Colors.green),),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Made for you"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.info_outline),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("About recomendations",style: TextStyle(fontWeight: FontWeight.bold),),
                    )
                  ],),
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(image: AssetImage("assets/ani.jpg"),fit:BoxFit.fill)
                      ),
                    ),
                  ),
                  SizedBox(width:100,child: Icon(Icons.add_box_outlined)),
                  SizedBox(width:20,child: Icon(Icons.download)),
                  // Icon(Icons.)
                  SizedBox(
                    width: 140,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green
                    ),
                    child:
                    Icon(Icons.play_arrow),
                  ),



                ],
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: ListTile(
                                leading: Container(
                                      height: 50,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image:
                                          AssetImage(mlis[index].image),fit: BoxFit.fill)),
                                              
                                    ),
                                title: Text(mlis[index].text,),
                                trailing: Icon(Icons.add_box_outlined),
                                ),
                          ),
                        );
                      }
                      ),
                ),

                // Card(
                //   child: ListTile(
                //     selected: true,
                //     leading: Container(
                //       height: 50,
                //       width: 40,
                //       decoration: BoxDecoration(
                //           image: DecorationImage(image:
                //           AssetImage("assets/remo.jpg"),fit: BoxFit.fill)),
                //
                //     ),
                //     title: Text("Remo,Aniruth ravichandran mix",style:TextStyle(color: Colors.black),),
                //     trailing: Icon(Icons.library_add,color: Colors.black,),
                //   ),
                // ),
                // Card(
                //   child: ListTile(
                //     selected: true,
                //     leading: Container(
                //       height: 50,
                //       width: 40,
                //       decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/jailer.jpg"),fit: BoxFit.fill)),
                //     ),
                //     title: Text("Jailer,Aniruth ravichandran mix",style:TextStyle(color: Colors.black),),
                //     trailing: Icon(Icons.library_add,color: Colors.black,),
                //   ),
                // ),
                // Card(
                //   child: ListTile(
                //     selected: true,
                //     leading: Container(
                //       height: 50,
                //       width: 40,
                //       decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/maari.jpg"),fit: BoxFit.fill)),
                //     ),
                //     title: Text("Maari,Aniruth ravichandran mix",style:TextStyle(color: Colors.black),),
                //     trailing: Icon(Icons.library_add,color: Colors.black,),
                //   ),
                // ),
                // Card(
                //   child: ListTile(
                //     selected: true,
                //     leading: Container(
                //       height: 50,
                //       width: 40,
                //       decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/vida.jpg"),fit: BoxFit.fill)),
                //     ),
                //     title: Text("Vidamuyarchi,Aniruth ravichandran mix",style:TextStyle(color: Colors.black),),
                //     trailing: Icon(Icons.library_add,color: Colors.black,),
                //   ),
                // ),
                // Card(
                //   child: ListTile(
                //     selected: true,
                //     leading: Container(
                //       height: 50,
                //       width: 40,
                //       decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/vikram.jpg"),fit: BoxFit.fill)),
                //     ),
                //     title: Text("Vikram,Aniruth ravichandran mix",style:TextStyle(color: Colors.black),),
                //     trailing: Icon(Icons.library_add,color: Colors.black,),
                //   ),
                // ),
                // CircleAvatar(),

              ],
            ),
        )
    );
  }
}

