import 'package:flutter/material.dart';

import '../akla_page/akla_page.dart';

class burgar extends StatefulWidget {
  final re_name;
  final re_image;
  final re_dis;
  final re_de;
  final re_time;
  final re_stars;

  burgar({
    required this.re_name,
    required this.re_image,
    required this.re_dis,
    required this.re_de,
    required this.re_time,
    required this.re_stars,
  });

  @override
  State<burgar> createState() => _burgarState();
}

class _burgarState extends State<burgar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              image_time(widget.re_image, widget.re_time),
              name_description(widget.re_name, widget.re_de),
              resturant_details(widget.re_dis),
              stars_row(
                widget.re_stars,
                Colors.green,
                Colors.green,
                Colors.green,
                Colors.green,
                Colors.grey,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 20,
                height: 2,
                color: Colors.grey,
                margin: EdgeInsets.only(right: 10),
              ),
              comments(
                "Mustafa",
                "طعم رهيب حلو وجوسي ويخبل واحبه واطلب منه دائما",
                Colors.green,
                Colors.green,
                Colors.green,
                Colors.green,
                Colors.green,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 20,
                height: 2,
                color: Colors.grey,
                margin: EdgeInsets.only(right: 10),
              ),
              add_comment(
                Colors.grey,
                Colors.grey,
                Colors.grey,
                Colors.grey,
                Colors.grey,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 10,
                color: Colors.grey.withOpacity(0.4),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "شائع",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              popular(
                  "https://mybayutcdn.bayut.com/mybayut/wp-content/uploads/Burger-RestaurantsAR09112020-2.jpg",
                  "جوسي بركر",
                  "5,000 د.ع.",
                  "150 غم"),
            ],
          ),
        ],
      ),
    );
  }

  Container image_time(String image, String time) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            )),
          ),
          Positioned(
              bottom: -5,
              left: 20,
              child: Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        time,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "دقائق",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }

  Container name_description(String name, String description) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            name,
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            description,
            style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }

  Container resturant_details(String dis) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 100,
            height: 40,
            margin: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$dis خصم ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.discount,
                  color: Colors.red,
                  size: 20,
                ),
              ],
            ),
          ), //discount
          Container(
            width: 100,
            height: 40,
            margin: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "أكتسب نقاط",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
    );
  }

  Row stars(
      Color? star1, Color? star2, Color? star3, Color? star4, Color? star5) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: star1,
          size: 30,
        ),
        Icon(
          Icons.star,
          color: star2,
          size: 30,
        ),
        Icon(
          Icons.star,
          color: star3,
          size: 30,
        ),
        Icon(
          Icons.star,
          color: star4,
          size: 30,
        ),
        Icon(
          Icons.star,
          color: star5,
          size: 30,
        ),
      ],
    );
  }

  Container stars_row(
    double stars_text,
    Color? star1,
    Color? star2,
    Color? star3,
    Color? star4,
    Color? star5,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Icon(
              Icons.arrow_back_ios,
              size: 25,
              color: Colors.green,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                stars(star1, star2, star3, star4, star5),
                Text(
                  "مرتكز على 1887 التقييمات",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              stars_text.toString(),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ); //stars
  }

  Container comments(
    String name,
    String comment,
    Color? star1,
    Color? star2,
    Color? star3,
    Color? star4,
    Color? star5,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: stars(star1, star2, star3, star4, star5),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Text(
                  name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              comment,
              style: TextStyle(fontSize: 18, color: Colors.grey),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }

  Container add_comment(
      Color? star1, Color? star2, Color? star3, Color? star4, Color? star5) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          stars(star1, star2, star3, star4, star5),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "أكتب تعليق",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
          ),
          Icon(
            Icons.add_comment_rounded,
            size: 25,
            color: Colors.green,
          ),
        ],
      ),
    );
  }

  Container popular(
      String urlimage, String food_name, String food_price, String food_wight) {
    return Container(
      width: double.infinity,
      height: 300,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(5),
        reverse: true,
        itemExtent: 210,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => akla_page(
                ak_des: "أطيب بركر على الكون يحتوي على العديد من المكونات",
                ak_image: urlimage,
                ak_name: food_name,
                ak_price: food_price,
                ak_wig: food_wight,
              )));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: NetworkImage(urlimage),
                        fit: BoxFit.cover,
                      )),
                ),
                Text(
                  food_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      food_price,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      " / $food_wight",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
