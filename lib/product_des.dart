import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'aset.dart';
class pd extends StatefulWidget {
  const pd({super.key});

  @override
  State<pd> createState() => _pdState();
}

class _pdState extends State<pd> {

  int index_=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration: InputDecoration(
            //  labelStyle: te,
              fillColor: Colors.white,
              filled: true,
              prefixIconColor: Colors.black,
              prefixIcon: Icon(Icons.search),
              hintText: "Search or ask something",
              // hintStyle: as,
              suffixIcon:SizedBox(
                width: 80,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.mic,color: Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.camera_alt_outlined,color: Colors.black,),
                    ),
                  ],
                ),
              ),

              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)

              )

          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code_scanner,color: Colors.black,),
          ),        ],
        backgroundColor:amz,
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(width: 340,
                child: Text(
                    "Stvin Magnetic Cable Clips for Wire and Cord Management, Office and Home Desk Organizer for Phone, Laptop, Tablet, and Car, Pack of 8 (Black)"),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                  children:[ CarouselSlider.builder(
                    itemCount: lis2.length,
                    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                      return Container(
                        height: 300,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            image: DecorationImage(
                              image: AssetImage(lis2[itemIndex].image),
                              fit: BoxFit.fill,
                            )
                        ),
                        // child: Text(itemIndex.toString()),
                      );
                    },
                    options:CarouselOptions(
                      height: 200,
                      aspectRatio: 16/9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      onPageChanged: (index,reason)
                      {
                        setState(() {
                          index_=index;
                        });
                      },
                      scrollDirection: Axis.horizontal,
                    ), ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.red
                      ),
                      child: Center(
                        child: SizedBox(width:30,
                          child: Text("50% off",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                              fontSize: 15,
                            ),),
                        ),
                      ),
                    )
                  ]
              ),
            ),
            Center(
              child: DotsIndicator(dotsCount: lis2.length,position: index_.toDouble(),
                  decorator: DotsDecorator(
                      size: Size.square(7.0),
                      activeSize: Size(12.0,13.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.0)
                      )
                  )),
            ),
            Row(
              children: [
                SizedBox(
                  width: 200,
                ),
                Text("3.5",style: TextStyle(color: Colors.blue),),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Text("(23,774)",style: TextStyle(color: Colors.blue),)
              ],
            ),

            Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  height: 30,
                  width: 140,
                  child: Center(child: Text("Limited time deal",style: TextStyle(color: Colors.white),)),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 20,),
                RichText(
                  text: TextSpan(
                    text: '-50%',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.red,
                      fontSize: 38,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                      text: TextSpan(
                          text: '₹3999',style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize:40 ))),
                )

              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                RichText(
                    text: TextSpan(
                        text: 'M.R.P.:',style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontSize:15 ))),
                Text("₹6999",
                  style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 15),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Inclusive of all the taxes",
                    style:GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ) ,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  SizedBox(
                    width: 330,
                    child: Text("Get ₹ 50 cashback: pay only ₹ 3949 for this order with Amazon pay Later.Activate now" ,
                      style:GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ) ,),
                  ),
                ],
              ),
            ),
            Card(
              child: ListTile(
                selected: true,
                leading: Icon(Icons.percent_outlined,color: Colors.black,),
                title: Text("see all offers & discounts",style:TextStyle(color: Colors.black),),
                trailing: Icon(Icons.arrow_drop_down_outlined,color: Colors.black,),
              ),
            ),
            Card(
              child: ListTile(
                selected: true,
                leading: Icon(Icons.shield_outlined,color: Colors.black,),
                title: Text("Amazom protect",style:TextStyle(color: Colors.black),),
                trailing: Icon(Icons.arrow_drop_down_outlined,color: Colors.black,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Total: ₹ 3989",
                    style:GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ) ,),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("FREE delivery",style: TextStyle(color: Colors.blue ,decoration: TextDecoration.underline,fontSize: 15)),
                Text("Friday,6 June.",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15)),
                Text("details",style: TextStyle(color:Colors.blue, decoration: TextDecoration.underline,fontSize: 15), )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  SizedBox(
                    width: 330,
                    child: GestureDetector(
                      onTap: (){},
                      child: Text("In stock" ,
                        style:GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ) ,),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: ListTile(
                selected: true,
                title: Text("Quantity:1",style:TextStyle(color: Colors.black),),
                trailing: Icon(Icons.arrow_drop_down_outlined,color: Colors.black,),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 40,
                width: 390,
                child: Center(child: Text("Add to Cart",style: TextStyle(color: Colors.black),)),
                decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Container(
                height: 40,
                width: 390,
                child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.black),)),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],

        ),
      ),//M.R.P.: ₹ 699

    );
  }
}
