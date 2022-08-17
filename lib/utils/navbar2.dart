import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Navbar2 extends StatefulWidget {
  const Navbar2({Key? key}) : super(key: key);

  @override
  State<Navbar2> createState() => _Navbar2State();
}

class _Navbar2State extends State<Navbar2> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      BrandLogo(BrandLogos.google),
      BrandLogo(BrandLogos.android),
      BrandLogo(BrandLogos.flutter),
      BrandLogo(BrandLogos.firebase),
    ];

    return Scaffold(
      body: Center(
        child: Text(
          'Page ${currentTab + 1}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 144, 22, 237),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        height: 60,
        index: currentTab,
        items: items,
        onTap: (index) {
          setState(() {
            currentTab = index;
          });
        },
      ),
    );
  }
}
