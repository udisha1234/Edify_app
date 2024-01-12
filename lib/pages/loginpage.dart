import 'package:edify/pages/Home.dart';
import 'package:edify/pages/page_control.dart';
import 'package:edify/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool ischeck = false;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.prim3,
      appBar: AppBar(
        backgroundColor: AppColors.prim3,
        title: Text('EDIFY' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),),
      body: Column(children: [
        // Container(height: h*0.02,),
        // Container(height: h*0.07,color: AppColors.prim2,
        // child: Row(children: [
        //   Container(
        //     width: w*0.1,color: AppColors.def,
        //   ),
        //   Container(width: w*0.15,color: AppColors.text2,),
        //   Container(color: AppColors.def,
        //   width: w*0.7,)
        // ],),
        // ),

        SizedBox(height: h*0.02,),
        Container(height: h*0.1,
        width: w*0.9,
        // color: AppColors.prim,
        child: Text('Create a new \nAccount' , style: TextStyle(fontSize: 28 , fontWeight: FontWeight.w600 , color: AppColors.text2),),
        ),
        SizedBox(height: h*0.04,),

        // ------------------TEXTFIELDS--------------------------

        Column(
          children: [
            Container(height: h*0.03,
            width: w*0.9 ,
            child: Text(' Email or Phone number ' , style: 
            TextStyle(fontSize: 15 , color: AppColors.text3),),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: w*0.05 , vertical: w*0.02),
              padding: EdgeInsets.all(10),
              height: h*0.07,
              width: w*0.9,
              decoration: BoxDecoration(
                color: AppColors.box1,
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
              cursorColor: AppColors.prim2,
              decoration: InputDecoration(
                hintText: '*',
              ),
            ),
            ),
            Container(height: h*0.02,),


            Container(height: h*0.03,
            width: w*0.9 ,
            child: Text(' Password ' , style: 
            TextStyle(fontSize: 15 , color: AppColors.text3),),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: w*0.05 , vertical: w*0.02),
              padding: EdgeInsets.all(10),
              height: h*0.07,
              width: w*0.9,
              decoration: BoxDecoration(
                color: AppColors.box1,
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
              cursorColor: AppColors.prim2,
              obscureText: true,
              decoration: InputDecoration(
                
                hintText: '*',
              ),
            ),
            ),
            Container(height: h*0.02,),


            Container(height: h*0.03,
            width: w*0.9 ,
            child: Text(' Confirm Password ' , style: 
            TextStyle(fontSize: 15 , color: AppColors.text3),),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: w*0.05 , vertical: w*0.02),
              padding: EdgeInsets.all(10),
              height: h*0.07,
              width: w*0.9,
              decoration: BoxDecoration(
                color: AppColors.box1,
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
              cursorColor: AppColors.prim2,
              obscureText: true,
              style: TextStyle(color: AppColors.text3),
              decoration: InputDecoration(
                hintText: '*',
              ),
            ),
            ),
            Container(height: h*0.03,),

            Container(height: h*0.06,
            width: w*0.9,
            child: Row(children: [
              Container(child: Checkbox(
                
                value : ischeck, 
                onChanged: (bool? value) {
                setState(() {
                  ischeck = value! ;
                });
              },
              )
              ,),
              Container(width: w*0.03,),
              Container(child: Text("By creating an account , agree to our\n'Terms and Conditions' " , style: TextStyle(fontWeight: FontWeight.w500 , color: AppColors.text2),),)
            ],),
            ),


            Container(height: h*0.03,),

            InkWell(
              onTap: () {

                
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => PageControl(),),
                  );
              },
              child: Container(height: h*0.06,width: w*0.85,
              child: Center(child: Text('Create Account' , style: TextStyle(fontSize: 18  , fontWeight: FontWeight.w600 , color: AppColors.def),)),
              decoration: BoxDecoration(color: AppColors.prim2,
              borderRadius: BorderRadius.circular(10),
              ),
              ),
            )

          ],
        ),
      ],),
    );
  }
}