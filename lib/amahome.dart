import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  TextEditingController _city = TextEditingController();
  Map<String, dynamic> bodyData = {};
  String city = "";

  Future<void> getData() async {
    try {
      city = _city.text.trim().toLowerCase();

      if (city.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Please enter a city name")),
        );
        return;
      }

      var res = await http.get(
        Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=5c84ee998e5c0b1e3ae4ff0d34ded67d",
        ),
      );

      print(res.statusCode);
      print(res.body);

      if (res.statusCode == 200) {
        setState(() {
          bodyData = jsonDecode(res.body);
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("City not found or API error")),
        );
      }
    } catch (e) {
      print(" Exception: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Something went wrong")),
      );
    }
  }

  String getLat() {
    try {
      return bodyData["coord"]["lat"].toString();
    } catch (_) {
      return "null";
    }
  }

  String getLon() {
    try {
      return bodyData["coord"]["lon"].toString();
    } catch (_) {
      return "null";
    }
  }

  String temp() {
    try {
      return "${bodyData["main"]["temp"]}°C";
    } catch (_) {
      return "null";
    }
  }

  String weatherDesc() {
    try {
      return bodyData["weather"][0]["description"];
    } catch (_) {
      return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Weather App")),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child:Column(
              children: [
                TextFormField(
                  controller: _city,
                  decoration: const InputDecoration(
                    labelText: "Enter city name",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: getData,
                  child: const Text("Search"),
                ),
                const SizedBox(height: 20),


                bodyData.isNotEmpty
                    ? Column(
// crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("City: ${city.toUpperCase()}",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text("Temperature: ${temp()}"),
                    Text("Latitude: ${getLat()}"),
                    Text("Longitude: ${getLon()}"),
                    Text("Weather: ${weatherDesc()}"),
                  ],
                )
                    : Text("Please enter city name")

                ,
              ],
            )
        )
    );
  }
}





// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:project1/aset.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:project1/product_des.dart';
//
// class Packs extends StatefulWidget {
//   const Packs({super.key});
//
//   @override
//   State<Packs> createState() => _PacksState();
// }
//
// class _PacksState extends State<Packs> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      // backgroundColor: blk,
//       appBar: AppBar(
//         // leading: Padding(
//         //   padding: const EdgeInsets.all(8.0),
//         //   child: Icon(Icons.menu,color: Colors.white,),
//         //
//         // ),
//
//         title: TextFormField(
//           decoration: InputDecoration(
//           //  labelStyle: te,
//             fillColor: Colors.white,
//             filled: true,
//             prefixIconColor: Colors.black,
//             prefixIcon: Icon(Icons.search),
//             hintText: "Search or ask something",
//            // hintStyle: as,
//             suffixIcon:SizedBox(
//               width: 80,
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Icon(Icons.mic,color: Colors.black,),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Icon(Icons.camera_alt_outlined,color: Colors.black,),
//                   ),
//                 ],
//               ),
//             ),
//
//             border: OutlineInputBorder(
//
//             )
//
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Icon(Icons.qr_code_scanner,color: Colors.white,),
//           ),        ],
//         backgroundColor:ac
//       ),
//          body: SingleChildScrollView(
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: [
//                Container(
//                  height: 40,
//                  width: 400,
//                  color:Colors.black12,
//                  child: Row(
//                    children: [
//                      Icon(Icons.location_on),
//                      Padding(
//                        padding: const EdgeInsets.all(8.0),
//                        child: Text("Delivering to coimbatore 641015-update location"),
//                      )
//                    ],
//                  ),
//                ),
//                CarouselSlider.builder(
//                    options: CarouselOptions(
//                      height: 200,
//                      aspectRatio: 16/9,
//                      viewportFraction: 1,
//                      initialPage: 0,
//                      enableInfiniteScroll: true,
//                      reverse: false,
//                      autoPlay: true,
//                      autoPlayInterval: Duration(seconds: 3),
//                      autoPlayAnimationDuration: Duration(milliseconds: 800),
//                      autoPlayCurve: Curves.fastOutSlowIn,
//                      enlargeCenterPage: true,
//                      enlargeFactor: 0.3,
//                      //onPageChanged: callbackFunction,
//                      scrollDirection: Axis.horizontal,
//                    ),
//
//                    itemCount: lis3.length,
//                    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
//                      return GestureDetector(
//                        onTap: (){
//                          Navigator.push(
//                            context,
//                            MaterialPageRoute(builder: (context) => const pd()),
//                          );
//                        },
//                        child: Container(
//                          height: 300,
//                          width: 400,
//                          decoration: BoxDecoration(
//                            color: Colors.cyan,
//                            image: DecorationImage(
//                                image: AssetImage(lis3[itemIndex].image),
//                            fit: BoxFit.fill,
//                            )
//
//                          ),
//                         // child: Text(itemIndex.toString()),
//                        ),
//                      );
//                    }
//
//                ),
//
//
//
//
// //
//                Container(
//                 // color: Colors.cyan,
//                  height: 180,
//
//                  child: ListView.builder(
//                    scrollDirection: Axis.horizontal,
//                      itemCount: lis2.length,
//                      itemBuilder: (BuildContext context, int pageViewIndex) {
//                        return Padding(
//                          padding: const EdgeInsets.all(7.0),
//                          child: GestureDetector(
//                            onTap: (){
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(builder: (context) => const pd()),
//                              );
//                            },
//                            child: Container(
//                              height: 150,
//                              width: 150,
//                              decoration: BoxDecoration(
//                                  border:Border.all(),
//                                  image: DecorationImage(
//                              image: AssetImage(lis2[pageViewIndex].image),
//                                                   fit: BoxFit.fill)
//
//                            ),
//                            ),
//                          ),);
//                      }
//                  ),
//                ),
//                SizedBox(
//                  height: 200,
//                  child: ListView.builder(
//                      scrollDirection: Axis.horizontal,
//                      itemCount: lis4.length,
//                      itemBuilder: (BuildContext context, int pageViewIndex) {
//                        return GestureDetector(
//                          onTap: (){
//                            Navigator.push(
//                              context,
//                              MaterialPageRoute(builder: (context) => const pd()),
//                            );
//                          },
//                          child: Padding(
//                            padding: const EdgeInsets.all(7.0),
//                            child: Column(
//                              children:[ Row(
//                                children:[ Container(
//                                  height: 65,
//                                  width: 65,
//                                  decoration: BoxDecoration(
//                                      border:Border.all(),
//                                      image: DecorationImage(
//                                          image: AssetImage(lis4[pageViewIndex].image),
//                                          fit: BoxFit.fill)
//
//                                  ),
//                                ),]
//                              ),
//                              Text(lis5[pageViewIndex].text),
//                              Row(
//                                children: [
//                                  Container(
//                                    height: 65,
//                                    width: 65,
//                                    decoration: BoxDecoration(
//                                        border:Border.all(),
//                                        image: DecorationImage(
//                                            image: AssetImage(lis5[pageViewIndex].image),
//                                            fit: BoxFit.fill)
//
//                                    ),
//                                  ),
//                                ],
//                              ),
//                                Text(lis5[pageViewIndex].text),]
//                            ),),
//                        );
//                      }
//                  ),
//                ),
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Text("Deals for the day",
//                    style:GoogleFonts.lato(
//                      textStyle: Theme.of(context).textTheme.displayLarge,
//                      fontSize: 30,
//                      fontWeight: FontWeight.w700,
//                      fontStyle: FontStyle.italic,
//                    ) ,),
//                ),
//
//
//                SizedBox(
//                  height: 700,
//                  child: GridView.builder(
//                      physics: NeverScrollableScrollPhysics(),
//                      shrinkWrap: true,
//                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                        crossAxisCount: 2, // number of items in each row
//                        mainAxisSpacing: 1, // spacing between rows
//                        crossAxisSpacing: 1, // spacing between columns
//                      ),
//                      itemCount: lis.length,
//                      itemBuilder: (BuildContext context, int index) {
//                        return GestureDetector(
//                          onTap: (){
//                            Navigator.push(
//                              context,
//                              MaterialPageRoute(builder: (context) => const pd()),
//                            );
//                          },
//                          child: Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: Container(
//                              height: 100,
//                              width: 150,
//                              color: Colors.white38,
//                              child: Container(
//                                decoration: BoxDecoration(
//                                //    image: DecorationImage(image: AssetImage("mic.jpg"))),
//                              ),
//                                child: Column(
//                                  children: [
//                                    Container(
//                                      height: 120,
//                                      width: 200,
//                                      decoration: BoxDecoration(
//                                        border: Border.all(),
//                                          image: DecorationImage(image: AssetImage(lis[index].image),
//                                          fit: BoxFit.fill)),
//                                    ),
//                                    Text(lis[index].text),
//                                    SizedBox(
//                                      height: 20,
//                                        width:100,
//                                        child: Text("-5% RS-/200"))
//                                  ],
//                                ),
//                              ),
//                              // decoration: BoxDecoration(
//                              //     image: DecorationImage(image: AssetImage("atk.jpg"))
//                              //
//                              //
//                              // ),
//                            ),
//                          ),
//                        );
//                      }
//                  ),
//                ),
//
//
//              ],
//            ),
//          ),
//     );
//   }
// }
