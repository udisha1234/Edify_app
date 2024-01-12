import 'package:edify/utils/colors.dart';
import 'package:edify/utils/images.dart';
import 'package:flutter/material.dart';

class Locator extends StatefulWidget {
  const Locator({super.key});

  @override
  State<Locator> createState() => _LocatorState();
}

class _LocatorState extends State<Locator> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.prim3,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: h*0.008,),
          Container(
            height: h*0.05,
            margin: EdgeInsets.symmetric(horizontal: w*0.047 , vertical: 10),
            child: SearchBar(
              elevation: MaterialStatePropertyAll(5),
              hintText: 'Search',
              leading: Icon(Icons.search_rounded),
            ),
            ),
            Stack(
              children: [
                Container(
                  // margin: EdgeInsets.only(top: h*0.01),
                  height: h,width: w,
                  // color: AppColors.prim,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(images.map_img_2 ) , fit: BoxFit.cover)),
                ),
                // Positioned(
                //   top: h*0.03,
                //   child: SingleChildScrollView(
                //     scrollDirection: Axis.horizontal,
                //     child: Row(
                //       children: [
                //         Container(
                //           margin: EdgeInsets.symmetric(horizontal: w*0.02),
                //           height: h*0.24,
                //           width: w*0.4,
                //           color: AppColors.prim2,
                //         ),
                //         Container(
                //           margin: EdgeInsets.symmetric(horizontal: w*0.02),
                //           height: h*0.24,
                //           width: w*0.4,
                //           color: AppColors.prim2,
                //         ),
                //         Container(
                //           margin: EdgeInsets.symmetric(horizontal: w*0.02),
                //           height: h*0.24,
                //           width: w*0.4,
                //           color: AppColors.prim2,
                //         ),
                //         Container(
                //           margin: EdgeInsets.symmetric(horizontal: w*0.02),
                //           height: h*0.24,
                //           width: w*0.4,
                //           color: AppColors.prim2,
                //         ),
                //       ],
                //     ),
                //   ),
                // )
              ],
            ),
        ],),
      ),
    );
  }
}