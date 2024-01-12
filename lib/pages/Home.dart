import 'package:edify/pages/loginpage.dart';
import 'package:edify/pages/mainpage.dart';
import 'package:edify/utils/colors.dart';
import 'package:edify/utils/images.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.prim3,
      body: 
      Center(
        child: Container(
          height: h,
          width: w*0.85,
          // color: AppColors.prim,
          child: Column(
            children: [
              Container(height: h*0.4,),
              Row(children: [
                Container(
                  margin: EdgeInsets.only(left: w*0.12),
                  height: h*0.068,width: w*0.21,
                  // color: Colors.teal,
                  child: Image.asset(images.edi_logo , fit: BoxFit.contain),
                  ),
                Container(height: h*0.1,width: w*0.4,
                // color: Colors.tealAccent,
                child: Text('EDIFY' , style: TextStyle(fontSize: 40 , fontWeight: FontWeight.w700 ,),),
                ),
              ],),

             Row(
               children: [
                 Container(
                 height: h*0.08,
              width: w*0.75,
                  child:  Center(child: Text('L e a r n   F r o m   T o d a y',style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w700),)),),
               ],
             ),
              // Row(
              //   children: [
              //     Container(height: 0.05,width: 0.5,color: Colors.deepPurpleAccent,),
              //   ],
              // )

              Container(height: h*0.25,),


              InkWell(
                hoverColor: AppColors.def,
                onTap: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => LoginPage(),),
                  );
                },
                child: Container(
                height: h*0.07,
                width: w*0.85,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                color: AppColors.prim2,),
                child: Center(child: Text('Get Started' , 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w600
                  ),
                  )),
                ),
              ),
            ],
          ),
                  ),
      ),


    );
  }
}