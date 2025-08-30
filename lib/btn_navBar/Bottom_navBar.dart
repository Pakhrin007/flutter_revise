import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:revise/nav_screen/add.dart';
import 'package:revise/nav_screen/home.dart';
import 'package:revise/nav_screen/profile.dart';
import 'package:revise/nav_screen/search.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex=2;

  final List<Widget> _pages=[
    Home(),
    Search(),
    Add(),
    Profile()

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Hello App'),
          centerTitle: true,
          leading: BackButton(),
          backgroundColor: Colors.red,
        ),
        body: _pages[_currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          color: Color(0Xffca7842),
          buttonBackgroundColor: Color(0Xffca7842),
          backgroundColor: Colors.transparent,
          onTap: (value) {
            setState(() {
              _currentIndex=value;
            });
          },
          items: [
          Icon(Icons.home_outlined,size: 30,),
          Icon(Icons.search_outlined,size: 30,),
          Icon(Icons.add_outlined,size: 30,),
          Icon(Icons.people_outlined,size: 30,),
        ]),
      //  bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     children: [
      //       buildNavBarItem(CupertinoIcons.home,'Home',0),
      //       buildNavBarItem(CupertinoIcons.home,'Home',0),
      //       buildNavBarItem(CupertinoIcons.home,'Home',0),

      //     ],
      //   ),
      //  ),
      ),
    );
  }
  // Widget buildNavBarItem(IconData icon,String Label,int index){
  //   return InkWell(
  //     child: Column(
  //       children: [
  //         Icon(icon),
  //         Text(Label)
  //       ],
  //     ),
  //   );
  }
