import 'package:flutter/material.dart';
import 'package:toters/pages/bottom_bar/bottom_bar.dart';

class burgar extends StatefulWidget {

  @override
  State<burgar> createState() => _burgarState();
}

class _burgarState extends State<burgar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 2,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            bottom_bar(),
            Padding(
              padding: EdgeInsets.only(),
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.black,
                size: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 200),
              child: Icon(
                Icons.filter_list_alt,
                color: Colors.black,
                size:20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black87,
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  "توصيل الى",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  "بغداد , العراق",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(children: [
            Image.network("https://mybayutcdn.bayut.com/mybayut/wp-content/uploads/Burger-RestaurantsAR09112020-2.jpg",width: MediaQuery.of(context).size.width,height: 100,),
            Positioned(
              bottom: -20,
              right: 20,
              child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("data",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                  Text("Mins",style: TextStyle(fontSize: 15,color: Colors.black54,),),
                ],
              )
            )),
          ],),
          Text("data",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
          Text("data",style: TextStyle(fontSize: 20,color: Colors.black54,),),
          Row(
            children: [
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: Row(
                  children: [
                    Icon(Icons.monetization_on_outlined,size: 20,color: Colors.red,),
                    Text("data",style: TextStyle(fontSize: 20,color: Colors.black54,),)
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: Row(
                  children: [
                    Icon(Icons.add_circle_outline,size: 20,color: Colors.blueAccent,),
                    Text("data",style: TextStyle(fontSize: 20,color: Colors.blue,),)
                  ],
                ),
              ),
            ],)
        ],
      ),
    );
  }
}
