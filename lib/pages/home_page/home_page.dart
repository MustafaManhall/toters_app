import 'dart:ui';

import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';

class toters_home extends StatefulWidget {
  const toters_home({Key? key}) : super(key: key);

  @override
  State<toters_home> createState() => _toters_homeState();
}

class _toters_homeState extends State<toters_home> {
  final List<String> listImages = [
    'images/1.jpg',
    'images/1.jpg',
    'images/1.jpg',
    'images/1.jpg',
    'images/1.jpg',
    'images/1.jpg',
    'images/1.jpg',
  ];
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
              Padding(
                padding: EdgeInsets.only(),
                child: Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 240),
                child: Icon(
                  Icons.filter_list_alt,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
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
        body: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 5,),
                      Column(
                        children: [
                          Text("نقطة",style: TextStyle(fontSize: 20),),
                          Icon(Icons.arrow_back_outlined,size: 20,),
                        ],
                      ),
                      SizedBox(width: 5,),
                      Text("0",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.info_outline,size: 30,color: Colors.greenAccent,),
                          Text("الفئة الخضراء",style: TextStyle(color: Colors.greenAccent,fontSize: 25,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        children: [
                          grayline(),
                          grayline(),
                          grayline(),
                          grayline(),
                          grayline(),
                          grayline(),
                          grayline(),
                          grayline(),
                        ],
                      ),
                      Text("تبقى 10 طلبات اضافية لغاية اغسطس 31 \n للترقية الى الفئة الذهبية.",
                        style: TextStyle(color: Colors.grey.withOpacity(0.7),
                            fontSize: 15,),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ],
              ),
              CarouselImages(
                scaleFactor: 0.6,
                listImages: listImages,
                height: 300.0,
                borderRadius: 30.0,
                cachedNetworkImage: true,
                verticalAlignment: Alignment.bottomCenter,
                onTap: (index) {
                },

              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  cards("https://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4135.png","المطاعم"),
                  cards("https://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4135.png","توترز فريش"),
                  cards("https://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4135.png","البقالة"),
                ],
              ),
              Row(
                children: [
                  cards("https://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4135.png","متاجر"),
                  cards("https://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4135.png","المندوب"),
                  cards("https://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4135.png","أضف رصيد"),
                ],
              ),
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(0.4),
                margin: EdgeInsets.only(top: 10,bottom: 10),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios_sharp,size: 20,color: Colors.greenAccent,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("خصومات اسبوعية",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                        Text("احصل على خصم 50% على مطاعم هذا الاسبوع",
                          style: TextStyle(color: Colors.grey.withOpacity(0.7),
                            fontSize: 17,),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 400,
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: NetworkImage("https://www.arrajol.com/sites/default/files/styles/800x533/public/2018/07/16/223141-1.jpg"),
                              fit: BoxFit.cover,
                            )
                          ),
                        ),
                        Positioned(
                        top: 10,
                        left: 15,
                        child: Icon(Icons.favorite_border,size: 30,color: Colors.white,)
                        ),
                        Positioned(
                          bottom: -10,
                          left: 10,
                          child: Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [ BoxShadow(
                                  blurRadius: 7,
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 7,
                                )
                                ]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("36 - 26",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                Text("د",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("هايزن بركر",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        Text("فاست فود - \$\$",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Container(
                        width: 100,
                        height: 50,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star,color: Colors.greenAccent,size: 20,),
                            Text("4.8",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.pinch,color: Colors.red,size: 20,),
                            Text("20% خصم",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.add_circle,color: Colors.greenAccent,size: 20,),
                            Text("أكتسب نقاط",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ],),*/
                  ],
                ),
              )
            ],
          ),
        ]));
  }
  Container grayline(){
    return Container(
      height: 2,
      width: 20,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
  Container cards(String imagePath,String cardName){
    return Container(
      height: 150,
      width: 120,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [ BoxShadow(
            blurRadius: 7,
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 7,
          )
          ]
      ),
      child: Column(
        children: [
          Center(child: Image.network(imagePath,width: 100,height: 100,)),
          Text(cardName,style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }

}