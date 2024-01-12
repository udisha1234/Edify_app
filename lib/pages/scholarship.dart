import 'package:edify/utils/colors.dart';
import 'package:edify/utils/images.dart';
import 'package:flutter/material.dart';

class Cards2 extends StatelessWidget {
   String imgurl ='';
   String txts1 ='';
   String txts2 ='';
   String rate1 ='';
   String rate2 ='';
  Cards2({Key? key, 
  required this.imgurl,
  required this.txts1,
  required this.txts2,
  required this.rate1,
  required this.rate2,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Stack(
            children: [
              Card(
                margin: EdgeInsets.all(10),
                child: Container(
                  height: h*0.2,
                  width: w*0.9,
                  decoration: BoxDecoration(
                    color: AppColors.def,
                  borderRadius: BorderRadius.circular(18)
                  ),
                ),
              ),
              Positioned(
                left: w*0.07,
                child: Row(
                  children: [
                    Container(
                      // padding: EdgeInsets.only(left: w*0.2),
                      // margin: EdgeInsets.all(h*0.02),
                      height: h*0.17,width: w*0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(imgurl),fit: BoxFit.cover),
                        color: AppColors.prim,
                        borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                    ),
                    Column(
                      children: [
                        Container(height: h*0.23,width: 0.7,color: AppColors.prim2,),
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
  }
}

class Scholar extends StatefulWidget {
  const Scholar({super.key});

  @override
  State<Scholar> createState() => _ScholarState();
}

class _ScholarState extends State<Scholar> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.prim3,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              backgroundColor: AppColors.prim3,
              title: Text('Scholarship' , style: TextStyle(fontWeight: FontWeight.w700 , color: AppColors.text2) ,),
            ),
            Container(
              height: h*0.07,
              padding: EdgeInsets.symmetric(
                horizontal: w*0.05 , 
                vertical: h*0.009),
              child: SearchBar(
                elevation: MaterialStatePropertyAll(5),
                leading: Icon(Icons.search_rounded),
                hintText: 'Search',
                backgroundColor:MaterialStatePropertyAll(AppColors.prim3),
                )
                ),
            Row(
              children: [
                // Container(width: w*0.03,),
                Container(
                  margin: EdgeInsets.only(bottom: h*0.01),
                  decoration:  BoxDecoration( 
                    // color: AppColors.prim2,
                    borderRadius: BorderRadius.circular(15)),
                  height: h*0.1, width: w*0.4,
                  child: Center(child: Text('Popular Search' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),)),
                ),
              ],
            ),
        
            Container(height: h*0.27, width: w*0.9,color: AppColors.prim2,),
            Row(
              children: [
                // Container(width: w*0.03,),
                Container(
                  margin: EdgeInsets.only(bottom: h*0.01),
                  decoration:  BoxDecoration( 
                    // color: AppColors.prim2,
                    borderRadius: BorderRadius.circular(15)),
                  height: h*0.1, width: w*0.6,
                  child: Center(child: Text('Recommendation Cources' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),)),
                ),
              ],
            ),
        
            Cards2(imgurl: images.schl_3 , rate1: '' , rate2: '' , txts1: ' ' , txts2: ' '),
        
        
          ],
        ),
      ),
    );
  }
}