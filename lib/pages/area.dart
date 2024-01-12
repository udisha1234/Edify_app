import 'package:edify/pages/info.dart';
import 'package:edify/utils/colors.dart';
import 'package:edify/utils/images.dart';
import 'package:flutter/material.dart';

class Cardss extends StatelessWidget {
   String imgurl ='';
   String text1='';
   String text2 ='';
  Cardss({Key? key, 
  required this.imgurl,
  required this.text1,
  required this.text2,
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
                  margin: EdgeInsets.all(10),
                  child: Container(
                    height: h*0.27,
                    width: w*0.34,
                    decoration: BoxDecoration(
                      color: AppColors.def,
                    borderRadius: BorderRadius.circular(18)
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(width: w*0.003,),

                  InkWell(
                    onTap: () {
                      Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => Info_teach(),),
                  );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric( horizontal : h*0.022 , vertical: w*0.04),
                      height: h*0.15,width: w*0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(imgurl),fit: BoxFit.cover),
                        color: AppColors.prim,
                        borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                    ),
                  ),
                  Container(height: h*0.04, width: w*0.37,
                  child: ListTile(
                    title: Text(text1 , style: TextStyle(fontWeight: FontWeight.w700),),
                    subtitle: Text(text2 , style: TextStyle(fontWeight: FontWeight.w600),),
                  ),
                  // color: AppColors.prim,
                  )
                ],
              ),
            ],
          );
  }
}

class Area extends StatefulWidget {
  const Area({super.key});

  @override
  State<Area> createState() => _AreaState();
}

class _AreaState extends State<Area> {

Widget searchItem(String text , Color color){
  var h = MediaQuery.of(context).size.height;
  var w = MediaQuery.of(context).size.width;
  return InkWell(
    onTap: () {
      setState(() {
        color = AppColors.prim2;
      });
    } ,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: w*0.02),
                  decoration:  BoxDecoration( color: color,
                    borderRadius: BorderRadius.circular(20)),
                  height: h*0.04, 
                  width: w*0.17,
                  child: Center(child: Text(text , style: TextStyle(fontWeight: FontWeight.w500),)),
                ),
  );
}

Widget cardss(String imgurl ,String txt){
  var h = MediaQuery.of(context).size.height;
  var w = MediaQuery.of(context).size.width;
  return InkWell(
    onTap: () {
      
    },
    child: Card(
                margin: EdgeInsets.all(10),
                shape: CircleBorder(),
                elevation: w*0.015,
                child: CircleAvatar(radius: 70,
                backgroundImage: AssetImage(imgurl),
                backgroundColor: Colors.black,
                child: Text(txt , style: TextStyle(color: AppColors.def),),
                ),
              ),
  );
}
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.prim3,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: h*0.01 , horizontal: w*0.02),
            child: AppBar(
            // leading: Icon(Icons.interests_rounded),
            // leadingWidth: w*0.04,
            backgroundColor: AppColors.prim3,
            title: Text('Area of Interest' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w700 , color: AppColors.text2),),),),
        
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                cardss(images.schl_1, 'Done'),
                cardss(images.schl_2, 'Done'),
                cardss(images.schl_3, 'Done'),
                // cardss(images.schl_4, 'Done'),
                cardss(images.schl_5, 'Done'),
                cardss(images.schl_6, 'Done'),
              ],),
            ),
          ),
          Container(height: h*0.02,),
          Container(
            width: w,
            margin: EdgeInsets.symmetric(vertical: h*0.01 , horizontal: w*0.02),
            height: h*0.06,
            // color: AppColors.prim2,
            child: Text('Popular Teacher ' , style: TextStyle(color: AppColors.text2 , fontSize: 25 , fontWeight: FontWeight.w700),),
            ),
            Container(
              height: h*0.056,
              margin: EdgeInsets.only(bottom: h*0.03),
              padding: EdgeInsets.symmetric(horizontal: w*0.05 , ),
              child: SearchBar(
                elevation: MaterialStatePropertyAll(5),
                // padding: MaterialStatePropertyAll(),
                hintText: 'Search',
                backgroundColor: MaterialStatePropertyAll(AppColors.prim3),),
            ),
            Row(
              children: [
                Container(width: w*0.03,),
                Container(
                  margin: EdgeInsets.only(bottom: h*0.01),
                  decoration:  BoxDecoration( 
                    // color: AppColors.prim2,
                    borderRadius: BorderRadius.circular(15)),
                  height: h*0.04, width: w*0.15,
                  child: Center(child: Text('Area' , style: TextStyle(fontWeight: FontWeight.w500),)),
                ),
              ],
            ),
            Wrap(children: [
              // Container(width: w*0.01,),
              searchItem('Island' ,AppColors.def),
              searchItem('Province' ,AppColors.def),
              searchItem('Districts' , AppColors.def),
              searchItem('Island' ,AppColors.def),
        
            ],),
            Container(height: h*0.01,),
            Row(
              children: [
                Container(width: w*0.03,),
                Container(
                  margin: EdgeInsets.only(bottom: h*0.01),
                  decoration:  BoxDecoration( 
                    // color: AppColors.prim2,
                    borderRadius: BorderRadius.circular(15)),
                  height: h*0.04, width: w*0.15,
                  child: Center(child: Text('Subject' , style: TextStyle(fontWeight: FontWeight.w500),)),
                ),
              ],
            ),
            Wrap(children: [
              // Container(width: w*0.01,),
              searchItem('All' ,AppColors.def),
              searchItem('Biology' ,AppColors.def),
              searchItem('Chemistry' , AppColors.def),
              searchItem('Physics' ,AppColors.def),
              // searchItem('Science' ,AppColors.def),
        
            ],),
        
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Cardss(imgurl: images.boy2 , text1: 'Veer Cope' , text2: 'Bio Science',),
                  Cardss(imgurl: images.girl1 , text1: 'Cassie Valdez' , text2: 'Biology'),
                  Cardss(imgurl: images.boy1 , text1: 'Paul Sahaa' , text2: 'Chemistry'),
                  // Cardss(imgurl: images.boy3),
                  // Cardss(imgurl: images.schl_1),
                  // Cardss(imgurl: images.schl_2),
                ],
              ),
            ),
        
        ]),
      ),
      
    );
  }
}