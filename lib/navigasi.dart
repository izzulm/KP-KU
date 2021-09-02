import 'package:flutter/material.dart';
import 'package:nadhifa_project/components/Body_Jdk.dart';
import 'package:nadhifa_project/components/home_screen.dart';
import 'package:nadhifa_project/components/body_tr.dart';
import 'package:nadhifa_project/info.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Navigasi extends StatefulWidget {
  @override
  _NavigasiState createState() => _NavigasiState();
}

class _NavigasiState extends State<Navigasi> {
  int _selectedIndex = 0;
  final List<Widget> screens = [
    HomeScreen(),
  ];
  final List<Widget> _widgetOptions = [
    HomeScreen(),
    BodyTreatment(),
    BodyJadwal(),
    InfoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.pink[100])
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: Colors.pink[100],
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                    iconColor: Colors.pink[200],
                  ),
                  GButton(
                    icon: Icons.spa,
                    text: 'Treatment',
                    iconColor: Colors.pink[200],
                  ),
                  GButton(
                    icon: Icons.calendar_today,
                    text: 'Jadwal Dokter',
                    iconColor: Colors.pink[200],
                  ),
                  GButton(
                    icon: Icons.info,
                    text: 'Info',
                    iconColor: Colors.pink[200],
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                }),
          ),
        ),
      ),
    );
  }
}
