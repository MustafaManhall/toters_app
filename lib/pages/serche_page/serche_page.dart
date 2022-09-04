import 'package:flutter/material.dart';

class serche extends StatefulWidget {
  const serche({Key? key}) : super(key: key);

  @override
  State<serche> createState() => _sercheState();
}

class _sercheState extends State<serche> {
  List<String> imagesListe = [
    "images/1.jpg",
    "images/1.jpg",
    "images/1.jpg",
    "images/1.jpg",
    "images/1.jpg",
    "images/1.jpg",
    "images/1.jpg",
    "images/1.jpg",
    "images/1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
           automaticallyImplyLeading: false,
           centerTitle: true,
           title: Container(
             width: MediaQuery.of(context).size.width,
             height: 45,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: Colors.grey.withOpacity(0.3)
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("البحث عن محل أو قطعة",style: TextStyle(color: Colors.grey),),
                 ),
                 Icon(
                   Icons.search,
                   color: Colors.black,
                   size: 25,
                 ),
               ],
             ),
           ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: Color(0xFF00b593),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "تحليل الطلبات",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 200,
                      child:Text(
                        "جديدنا على توترز اذا يسع على دراجة نارية يمكننا توصيله",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 90,
                  width: 100,
                  decoration:BoxDecoration(
                      color: Color(0xff00b68d),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("images/6.jpg"),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
          Container(
            height: 578,
            width: double.infinity,
            color: Colors.white,
            child: ListView.builder(
              itemCount: imagesListe.length,
              itemBuilder: (BuildContext context, index) {
                return card(imagesListe[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
  Padding card(String image) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
             Text(
                "خصومات السعادة",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Flexible(
                child: Container(
                  child: Text(
                    "احصل على خصم 50% على المطاعم\n هذا الاسبوع",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
             Text(
                "29 متجر",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
              width: 10,
            ),
          Container(
              height: 100,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
        ]),
      ),
    );
  }
}
