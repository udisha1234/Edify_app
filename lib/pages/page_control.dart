import 'package:edify/pages/Home.dart';
import 'package:edify/pages/area.dart';
import 'package:edify/pages/loginpage.dart';
import 'package:edify/pages/mainpage.dart';
import 'package:edify/pages/maps.dart';
import 'package:edify/pages/profile.dart';
import 'package:edify/pages/scholarship.dart';
import 'package:edify/utils/colors.dart';
import 'package:flutter/material.dart';

// PageView()

class PageControl extends StatefulWidget {


  const PageControl({super.key});

  @override
  State<PageControl> createState() => _PageControlState();
}

class _PageControlState extends State<PageControl> {

PageController pageController = PageController();

int selectedindex = 0;


void ontapped(int index ){
  setState(() {
    selectedindex=index;
  }); 
  pageController.jumpToPage(selectedindex);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.prim,
      bottomNavigationBar: BottomNavigationBar(
        
        elevation: 50,
        iconSize: 26,
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home) , label: 'Home' ),
        BottomNavigationBarItem(icon: Icon(Icons.school_sharp) , label: 'Scholarship'),
        BottomNavigationBarItem(icon: Icon(Icons.maps_home_work_rounded) , label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.interests_rounded) , label: 'Interest'),
        BottomNavigationBarItem(icon: Icon(Icons.person) , label: 'Profile'),
      ],
      
      currentIndex:selectedindex ,
      unselectedItemColor: AppColors.prim,
      selectedItemColor: AppColors.prim2,
      onTap: ontapped,
      // onTap: (value) {
      //   ontapped(selectedindex);
      // },
      // backgroundColor: AppColors.prim,
      ),
      body: PageView(
        controller: pageController,
        children: [
          MainPage(),
          Scholar(),
          Locator(),
          Area(),
          Profile()
        ],
      )
    );
  }
}