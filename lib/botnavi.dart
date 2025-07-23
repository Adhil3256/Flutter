import 'package:flutter/material.dart';
import 'package:project1/amahome.dart';
import 'package:project1/aset.dart';
import 'package:project1/instagram.dart';
import 'package:project1/spotify.dart';


class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int _index = 0;

  final pages = [
    // Packs(),
    sp(),
    ip(),
  ];


  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt),label: "Details"),
          BottomNavigationBarItem(icon: Icon(Icons.image_outlined),label: "Instagram")
        ],
        currentIndex: _index,
        onTap: tap,
      ),

    );
  }
}
