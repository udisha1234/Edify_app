import 'package:edify/utils/colors.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.prim3,
      appBar: AppBar(
        backgroundColor: AppColors.def,
        title: Text('Profile' , style: TextStyle(fontSize: 23 , fontWeight: FontWeight.w600),),),

      body: SingleChildScrollView(
        child: Column(children: [
          Container(height: h*0.2,width: double.infinity,
          // color: AppColors.prim2,
          child: Row(children: [
            Container(
              margin: EdgeInsets.all(25),
              height: w*0.23,width: w*0.23,
            decoration: BoxDecoration(
              color: AppColors.def,
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('assets/profile_person.jpg'))
            ),
            ),
            Container(height: h*0.15,width: w*0.5,
            // color: AppColors.def,
            child: Column(children: [
        
              Container(height: h*0.015,),
        
            Container(height :h*0.04 ,width: w*0.45,child: Text('Your Name' ,style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w500),),),
            
            Container(height :h*0.04 ,width: w*0.45,child: Text('Email' ,style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w500),),),
        
            Container(height :h*0.04 ,width: w*0.45,child: Text('Contact no. ' ,style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w500),),),
        
        
            ]),
            )
          ],),
          ),
        
          InkWell(
            onTap: () {
              
            },
            child: Container(
              height: h*0.05,width: w*0.86,
              child: Center(child: Text('Edit Profile' , style: TextStyle(fontSize: 17),)),
              decoration: BoxDecoration(color: AppColors.def,
              borderRadius: BorderRadius.circular(12)
              ),
            ),
          ),
        
          Container(height: h*0.03,),
        
          Container(height: h*0.37,width: w*0.86,
          decoration: BoxDecoration(color: AppColors.def,
          borderRadius: BorderRadius.circular(15)
          ),
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              height: h*0.04,width: w*0.75,child: Text('Personal Details' ,
              style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w700 , color: AppColors.text2),
              ),),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: w*0.7,
              height: h*0.03,
              child: Text('Name'),),
              Container(
                height: h*0.04,width: w*0.7,
                child: TextField(decoration: InputDecoration(hintText: '*')),),
        
                Container(height: h*0.016,),
        
                Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: w*0.7,
              height: h*0.03,
              child: Text('Date of Birth'),),
              Container(
                height: h*0.04,width: w*0.7,
                child: TextField(decoration: InputDecoration(hintText: '*')),),
        
                Container(height: h*0.016,),
        
                Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: w*0.7,
              height: h*0.03,
              child: Text('Proffession'),),
              Container(
                height: h*0.04,width: w*0.7,
                child: TextField(decoration: InputDecoration(hintText: '*')),),
          ],),
          ),

          Container(height: h*0.02,),

//------------------------Other Details------------------------------------------
          Container(height: h*0.37,width: w*0.86,
          decoration: BoxDecoration(color: AppColors.def,
          borderRadius: BorderRadius.circular(15)
          ),
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              height: h*0.04,width: w*0.75,child: Text('Other Details' ,
              style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w700 , color: AppColors.text2),
              ),),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: w*0.7,
              height: h*0.03,
              child: Text('Institute'),),
              Container(
                height: h*0.04,width: w*0.7,
                child: TextField(decoration: InputDecoration(hintText: '*')),),
        
                Container(height: h*0.016,),
        
                Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: w*0.7,
              height: h*0.03,
              child: Text('State'),),
              Container(
                height: h*0.04,width: w*0.7,
                child: TextField(decoration: InputDecoration(hintText: '*')),),
        
                Container(height: h*0.016,),
        
                Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: w*0.7,
              height: h*0.03,
              child: Text('Proffession'),),
              Container(
                height: h*0.04,width: w*0.7,
                child: TextField(decoration: InputDecoration(hintText: '*')),),
          ],),
          )
        ]),
      ),
    );
  }
}