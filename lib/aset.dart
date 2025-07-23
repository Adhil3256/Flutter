

import 'package:flutter/material.dart';


/// appbar
Color blk = Colors.red;
Color amz= Color(0xfff8cdbdf);
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
  {"image":"assets/w1.jpeg","text":"hello"},
  {"image":"assets/w2.jpeg","text":"hi"},
  {"image":"assets/w3.jpeg","text":"wqlkkdhq"},
  {"image":"assets/w4.jpeg","text":"hjjackjeello"},

  {"image":"assets/w5.jpeg","text":"hello"},
  {"image":"assets/w6.jpeg","text":"hi"},
  {"image":"assets/w7.jpeg","text":"wqlkkdhq"},
  {"image":"assets/w8.jpeg","text":"hjjackjeello"},
  {"image":"assets/w9.jpeg","text":"hello"},
  {"image":"assets/w10.jpeg","text":"hi"},
  {"image":"assets/w11.jpeg","text":"wqlkkdhq"},
  {"image":"assets/w12.jpeg","text":"hjjackjeello"},
];




class model2
{
  String? image;
  String? text;
  model2(this.image,this.text);
}
List lis2= dataModel2.map((e)=>model2(e["image"], e["text"])).toList();

var dataModel2 = [
  // {"image":"products/w1.jpeg","text":"hello"},
  // {"image":"products/w2.jpeg","text":"hello"},
  {"image":"assets/w3.jpeg","text":"hello"},
  {"image":"assets/w4.jpeg","text":"hjjackjeello"},
  {"image":"assets/w5.jpeg","text":"wqlkkdhq"},
  // {"image":"products/w6.jpeg","text":"hello"},
  // {"image":"products/w7.jpeg","text":"hello"},


];


class model3
{
  String? image;
  String? text;
  model3(this.image,this.text);
}
List lis3= dataModel3.map((e)=>model3(e["image"], e["text"])).toList();

var dataModel3 = [
  {"image":"assets/a1.jpeg","text":"hello"},
  {"image":"assets/a2.jpeg","text":"hi"},
  {"image":"assets/a3.jpeg","text":"wqlkkdhq"},
  {"image":"assets/am1.jpg","text":"hello"},
  {"image":"assets/am2.jpg","text":"hello"},
  {"image":"assets/am2.jpg","text":"hello"},
];

class Model4
{
  String? image;
  String?  text;

  Model4(this.image,this.text);

}


List lis4 = dataModel4.map((e)=>Model4(e["image"], e["text"])).toList();


var dataModel4 = [
  {"image":"assets/w11.jpeg","text":"wireless"},
  {"image":"assets/w12.jpeg","text":"Shirts MEN"},
  {"image":"assets/w1.jpeg","text":"Headphones"},
  {"image":"assets/w2.jpeg","text":"HP Laptop"},
  {"image":"assets/w3.jpeg","text":"Shirts MEN"},
  {"image":"assets/w4.jpeg","text":"DELL Laptop"},
  {"image":"assets/w5.jpeg","text":"Shirts for men"},
  {"image":"assets/w6.jpeg","text":"LENOVA aptop"},
  {"image":"assets/w7.jpeg","text":"headphones"},


];

class Model5
{
  String? image;
  String?  text;

  Model5(this.image,this.text);

}


List lis5 = dataModel5.map((e)=>Model4(e["image"], e["text"])).toList();


var dataModel5 = [


  {"image":"assets/w8.jpeg","text":"headphones"},
  {"image":"assets/w9.jpeg","text":"LENOVA aptop"},
  {"image":"assets/w10.jpeg","text":"Shirts for men"},
  {"image":"assets/w11.jpeg","text":"DELL Laptop"},
  {"image":"assets/w12.jpeg","text":"Shirts MEN"},
  {"image":"assets/w1.jpeg","text":"HP Laptop"},
  {"image":"assets/w2.jpeg","text":"Headphones"},
  {"image":"assets/w3.jpeg","text":"Shirts MEN"},
  {"image":"assets/w4.jpeg","text":"wireless"},
];
class music
{
  String? image;
  String? text;
  music(this.image,this.text);
}
List mlis = musiclist.map((e)=>music(e["image"],e["text"])).toList();
var musiclist=[
  {"image":"assets/jailer.jpg","text":"jailer,anirudh ravichandram hitss"},
  {"image":"assets/maari.jpg","text":"Maari,anirudh ravichandram hitss"},
  {"image":"assets/vikram.jpg","text":"Vikram,anirudh ravichandram hitss"},
  {"image":"assets/master.jpg","text":"Master,anirudh ravichandram hitss"},
  {"image":"assets/remo.jpg","text":"Remo,anirudh ravichandram hitss"},
];