

import 'package:flutter/material.dart';


/// appbar
Color blk = Colors.red;
 TextStyle as = TextStyle(color: blk,fontSize: 20);


 Color ac = Color(0xff131921);



 class Model
 {
   String? image;
   String?  text;

   Model(this.image,this.text);

 }


 List lis = dataModel.map((e)=>Model(e["image"], e["text"])).toList();


 var dataModel = [
   {"image":"assets/atk.jpg","text":"hello"},
   {"image":"assets/mic.jpg","text":"hi"},
   {"image":"assets/zin.jpg","text":"wqlkkdhq"},
   {"image":"assets/atk.jpg","text":"hjjackjeello"},

   {"image":"assets/atk.jpg","text":"hello"},
   {"image":"assets/mic.jpg","text":"hi"},
   {"image":"assets/zin.jpg","text":"wqlkkdhq"},
   {"image":"assets/atk.jpg","text":"hjjackjeello"},
   {"image":"assets/atk.jpg","text":"hello"},
   {"image":"assets/mic.jpg","text":"hi"},
   {"image":"assets/zin.jpg","text":"wqlkkdhq"},
   {"image":"assets/atk.jpg","text":"hjjackjeello"},
 ];




class model2
{
  String? image;
  String? text;
  model2(this.image,this.text);
}
List lis2= dataModel2.map((e)=>model2(e["image"], e["text"])).toList();

 var dataModel2 = [
   {"image":"assets/as.jpg","text":"hello"},
   {"image":"amz/s.jpg","text":"hello"},
   {"image":"amz/h2.jpg","text":"hello"},
   {"image":"assets/as4.jpg","text":"hjjackjeello"},
   {"image":"assets/as3.jpg","text":"wqlkkdhq"},

   {"image":"amz/l.jpg","text":"hello"},
   {"image":"amz/f.jpg","text":"hello"},


 ];


class model3
{
  String? image;
  String? text;
  model3(this.image,this.text);
}
List lis3= dataModel3.map((e)=>model3(e["image"], e["text"])).toList();

var dataModel3 = [
  {"image":"assets/amz.jpg","text":"hello"},
  {"image":"assets/amz2.jpg","text":"hi"},
  {"image":"assets/amz3.jpg","text":"wqlkkdhq"},
];

class Model4
{
  String? image;
  String?  text;

  Model4(this.image,this.text);

}


List lis4 = dataModel4.map((e)=>Model4(e["image"], e["text"])).toList();


var dataModel4 = [
  {"image":"amz/f.jpg","text":"wireless"},
  {"image":"amz/s5.jpg","text":"Shirts MEN"},
  {"image":"amz/h.jpg","text":"Headphones"},
  {"image":"amz/l2.jpg","text":"HP Laptop"},
  {"image":"amz/s4.jpg","text":"Shirts MEN"},
  {"image":"amz/l.jpg","text":"DELL Laptop"},
  {"image":"amz/s.jpg","text":"Shirts for men"},
  {"image":"amz/l4.jpg","text":"LENOVA aptop"},
  {"image":"amz/h2.jpg","text":"headphones"},


];

class Model5
{
  String? image;
  String?  text;

  Model5(this.image,this.text);

}


List lis5 = dataModel5.map((e)=>Model4(e["image"], e["text"])).toList();


var dataModel5 = [


  {"image":"amz/h2.jpg","text":"headphones"},
  {"image":"amz/l4.jpg","text":"LENOVA aptop"},
  {"image":"amz/s.jpg","text":"Shirts for men"},
  {"image":"amz/l.jpg","text":"DELL Laptop"},
  {"image":"amz/s4.jpg","text":"Shirts MEN"},
  {"image":"amz/l2.jpg","text":"HP Laptop"},
  {"image":"amz/h.jpg","text":"Headphones"},
  {"image":"amz/s5.jpg","text":"Shirts MEN"},
  {"image":"amz/f.jpg","text":"wireless"},


];

