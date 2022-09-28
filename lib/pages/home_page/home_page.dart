import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../other/resturant_page/resturant_page.dart';

class TotersHome extends StatefulWidget {
  const TotersHome({super.key});

  @override
  State<TotersHome> createState() => _TotersHomeState();
}

class _TotersHomeState extends State<TotersHome> {
  int activeIndex = 0;

  List<dynamic> imageurll = [];
  late Future userdata;
  Future getData() async {
    var url = Uri.parse("http://10.0.2.2:8000/");
    Response response = await get(url);
    String body = response.body;
    List<dynamic> list1 = json.decode(body);
    imageurll.clear();
    for (int i = 0; i < list1.length; i++) {
      setState(() {
        imageurll.add(list1[i]['user_image']);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    userdata = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          elevation: 1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.filter_list_alt,
                    color: Colors.grey,
                    size: 30,
                  ),
                  Icon(
                    Icons.notifications_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "توصيل الى",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'cairo'),
                    ),
                    Text(
                      "بغداد , العراق",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'cairo'),
                    ),
                  ],
                ),
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
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: const [
                          Text(
                            "نقطة",
                            style: TextStyle(fontSize: 18, fontFamily: 'cairo'),
                          ),
                          Icon(
                            Icons.arrow_back_outlined,
                            size: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "0",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'cairo'),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.info_outline,
                            size: 30,
                            color: Colors.greenAccent,
                          ),
                          Text(
                            "الفئة الخضراء",
                            style: TextStyle(
                                color: Colors.greenAccent,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'cairo'),
                          ),
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
                      Text(
                        "تبقى 10 طلبات اضافية لغاية اغسطس 31 \n للترقية الى الفئة الذهبية.",
                        style: TextStyle(
                            color: Colors.grey.withOpacity(0.7),
                            fontSize: 15,
                            fontFamily: 'cairo'),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ],
              ),
              FutureBuilder(
                future: userdata,
                  builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none :
                      return const Text("none");
                    case ConnectionState.active :
                      return const Text("active");
                    case ConnectionState.waiting :
                      return const Text("waiting");
                    case ConnectionState.done :
                      return carouselSliderbuilder();
                    default:
                      return const Text("default");
                  }
                },
              ),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.center,
                child: buildIndicator(),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  cards(
                      "https://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4135.png",
                      "المطاعم"),
                  cards(
                      "https://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4135.png",
                      "توترز فريش"),
                  cards(
                      "https://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4135.png",
                      "البقالة"),
                ],
              ),
              Row(
                children: [
                  cards(
                      "https://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4135.png",
                      "متاجر"),
                  cards(
                      "https://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4135.png",
                      "المندوب"),
                  cards(
                      "https://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG4135.png",
                      "أضف رصيد"),
                ],
              ),
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(0.4),
                margin: const EdgeInsets.only(top: 10, bottom: 10),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_back_ios_sharp,
                      size: 20,
                      color: Colors.greenAccent,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "خصومات اسبوعية",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'cairo'),
                        ),
                        Text(
                          "احصل على خصم 50% على مطاعم هذا الاسبوع",
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.7),
                              fontSize: 17,
                              fontFamily: 'cairo'),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  children: [
                    restaurantscard(
                        "https://www.arrajol.com/sites/default/files/styles/800x533/public/2018/07/16/223141-1.jpg",
                        "36 - 26",
                        "هايزن بركر",
                        4.8,
                        "20%"),
                    restaurantscard(
                        "https://www.arrajol.com/sites/default/files/styles/800x533/public/2018/07/16/223141-1.jpg",
                        "36 - 26",
                        "زرزور",
                        4.0,
                        "30%"),
                    restaurantscard(
                        "https://www.arrajol.com/sites/default/files/styles/800x533/public/2018/07/16/223141-1.jpg",
                        "36 - 26",
                        "فلكينو بركر",
                        3.8,
                        "10%"),
                    restaurantscard(
                        "https://www.arrajol.com/sites/default/files/styles/800x533/public/2018/07/16/223141-1.jpg",
                        "36 - 26",
                        "فايكنك بركر",
                        5.0,
                        "50%"),
                  ],
                ),
              ),
            ],
          ),
        ]));
  }

  Widget carouselSliderbuilder() => CarouselSlider.builder(
      options: CarouselOptions(
        height: 250,
        //autoPlay: true,
        reverse: true,
        autoPlayInterval: const Duration(seconds: 5),
        viewportFraction: 1,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) =>
        (setState(() => activeIndex = index)),
      ),
      itemCount: imageurll.length,
      itemBuilder: (context, index, realIndex) {
        final urlimag = imageurll[index];
        return buildImage(urlimag, index);
      });

  Widget buildImage(String urlImage, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(urlImage),
            )),
      ); // Container

  Widget buildIndicator() => Directionality(
        textDirection: TextDirection.rtl,
        child: AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: imageurll.length,
          effect: const JumpingDotEffect(
            dotWidth: 10,
            dotHeight: 10,
            activeDotColor: Colors.red,
            dotColor: Colors.black12,
          ), // JumpingDotEffect
        ),
      );

  Container grayline() {
    return Container(
      height: 4,
      width: 30,
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  Container cards(String imagePath, String cardName) {
    return Container(
      height: 120,
      width: 120,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
            )
          ]),
      child: Column(
        children: [
          Center(
              child: Image.network(
            imagePath,
            width: 80,
            height: 80,
          )),
          Text(
            cardName,
            style: const TextStyle(fontSize: 18, fontFamily: 'cairo'),
          ),
        ],
      ),
    );
  }

  Container restaurantscard(
      String imagePath, String time, String rName, double stars, String dis) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 400,
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Burgar(
                        re_de:
                            "نقدم الذ واطيب الزرازير في العراق نقدمها لكم على شكل بركر",
                        re_time: time,
                        re_stars: stars,
                        re_name: rName,
                        re_image: imagePath,
                        re_dis: dis,
                      )));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                              image: NetworkImage(imagePath),
                              fit: BoxFit.cover,
                            )),
                      ),
                      const Positioned(
                          top: 10,
                          left: 15,
                          child: Icon(
                            Icons.favorite_border,
                            size: 30,
                            color: Colors.white,
                          )),
                      Positioned(
                        bottom: -10,
                        left: 10,
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 7,
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 7,
                                )
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                time,
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'cairo'),
                              ),
                              const Text(
                                "د",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontFamily: 'cairo'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    rName,
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'cairo'),
                  ),
                  const Text(
                    "فاست فود - \$\$",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'cairo'),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 70,
                height: 50,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      stars.toString(),
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'cairo'),
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.greenAccent,
                      size: 30,
                    ),
                  ],
                ),
              ), //stars
              Container(
                width: 100,
                height: 50,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$dis خصم ",
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'cairo'),
                    ),
                    const Icon(
                      Icons.discount,
                      color: Colors.red,
                      size: 20,
                    ),
                  ],
                ),
              ), //discount
              Container(
                width: 100,
                height: 50,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "أكتسب نقاط",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'cairo'),
                    ),
                    Icon(
                      Icons.add_circle,
                      color: Colors.greenAccent,
                      size: 20,
                    ),
                  ],
                ),
              ), //won points
            ],
          ),
        ],
      ),
    );
  }
}
