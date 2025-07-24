import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project1/api%20project/ProviderClass.dart';
import 'package:provider/provider.dart';
class appd extends StatefulWidget {
  Map<String,dynamic> a={};
  appd({super.key, required this.a});

  @override
  State<appd> createState() => _appdState();
}

class _appdState extends State<appd> {

  @override
  Widget build(BuildContext context) {
    final cartObj=Provider.of<ProviderClass>(context);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Product description"),
        actions: [Icon(Icons.menu)],
      ),
      
      body: Center(
        child: Column(
          children: [
            Text(widget.a["title"].toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(widget.a["images"][0]))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('\$',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text(widget.a["price"].toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(width: 170,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RatingBar.builder(
                      initialRating: widget.a["rating"],
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
                  ),
                ],
              ),
            ),

            Text(widget.a["description"].toString(),style: TextStyle(fontSize: 11),),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(onPressed: (){
              print("A is:${widget.a}");
              Map<String,dynamic> myPdt=widget.a;
              cartObj.addtoCart(myPdt);
              print(cartObj.pdtCount);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Product added")));
            }, child: Text("Add to Cart"))
            // Container(
            //   height: 40,
            //   width: 300,
            //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black),
            // child: Center(child: Text("Add to cart",style:TextStyle(color: Colors.white),)),
            // )
          ],
        ),
      ),

    );
  }
}
