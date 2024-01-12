import 'package:edify/utils/colors.dart';
import 'package:edify/utils/images.dart';
import 'package:flutter/material.dart';


class Cards extends StatelessWidget {
   String imgurl ='';
  Cards({Key? key, 
  required this.imgurl,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Stack(
            children: [
              Center(
                child: Card(
                  margin: EdgeInsets.all(9),
                  child: Container(
                    height: h*0.25,
                    width: w*0.82,
                    decoration: BoxDecoration(
                      color: AppColors.def,
                    borderRadius: BorderRadius.circular(18)
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(width: w*0.08,),

                  InkWell(
                    onTap: () {
                      
                    },
                    child: Container(
                      margin: EdgeInsets.all(h*0.022),
                      height: h*0.227,width: w*0.35,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(imgurl),fit: BoxFit.cover),
                        color: AppColors.prim,
                        borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                    ),
                  )
                ],
              )
            ],
          );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.prim3,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h*0.15,
              width: double.infinity,
              // color: AppColors.prim2,
              child: 
              ListTile(
                title: Text('Good Morning!' , style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.lerp(FontWeight.w100, FontWeight.w500 , 45 )
              ),),
              subtitle:Text('Hardline Scott' , style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),),
              )
              
            ),
        
            Stack(
              children: [
                Center(
                  child: Container(
                    height: h*0.3,
                  width: w*0.84,
                  decoration: BoxDecoration(
                    color: AppColors.prim2,
                    borderRadius: BorderRadius.circular(25)),),),
                Positioned(
                  left: w*0.14,
                  top: h*0.03,
                  child: 
                  Column(
                    children: [
                      Container(height: h*0.15, width: w*0.36,
                      child: Text('Join The \nCommunity ',
                      style: TextStyle(
                        fontSize: 24, 
                        fontWeight: FontWeight.w700 ,
                         color: AppColors.def),),
                         ),
                         InkWell(
                          onTap: () {
                            
                          },
                           child: Container(
                            height: h*0.05,
                            width: w*0.3,
                            child: Center(child: Text('Join Now',
                            style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600)
                            )),
                            decoration: BoxDecoration(
                              color: AppColors.def,
                              borderRadius: BorderRadius.circular(30)),),
                         ),
                    ],
                  ),
                ),
                Positioned(
                  left: w*0.56,
                  top: h*0.02,
                  child: Container(
                    height: h*0.25,
                    width: w*0.3,
                    // child: Text(' To  Add \n Illustration \n Here !! '),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(images.illus_1),
                      ),
                      // color: AppColors.def,
                    borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                )
        
              ],
            ),
        
            ListTile(
              title:  Text(' Popular Institutions ' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: AppColors.text2),),
            ),
            Container(
              child: Column(
                children: [
                  Cards(imgurl: images.schl_1),
                  Cards(imgurl: images.schl_2),
                  Cards(imgurl: images.schl_3),

                ],
              ),
            )
            // cards(),
            // cards(),
            // Stack(
            //   children: [
            //     Center(
            //       child: Card(
            //         child: Container(
            //           height: h*0.25,
            //           width: w*0.8,
            //           decoration: BoxDecoration(color: AppColors.def,
            //           borderRadius: BorderRadius.circular(18)
            //           ),
            //         ),
            //       ),
            //     ),
            //     Row(
            //       children: [
            //         Container(width: w*0.10,),
        
            //         Container(
            //           margin: EdgeInsets.all(h*0.017),
            //           height: h*0.227,width: w*0.34,
            //           decoration: BoxDecoration(
            //             color: AppColors.prim,
            //             borderRadius: BorderRadius.all(Radius.circular(12))
            //           ),
            //         )
            //       ],
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}