import 'package:flutter/material.dart';

class akla_page extends StatefulWidget {
  final ak_name;
  final ak_image;
  final ak_price;
  final ak_des;
  final ak_wig;

  akla_page({
    required this.ak_name,
    required this.ak_image,
    required this.ak_price,
    required this.ak_des,
    required this.ak_wig,
  });

  @override
  State<akla_page> createState() => _akla_pageState();
}

class _akla_pageState extends State<akla_page> {
  String ritem = "";
  bool rittem = false;
  bool riittem = false;
  bool riiittem = false;
  bool riiiittem = false;
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Icon(
            Icons.share,
            size: 30,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.favorite_border,
            size: 30,
            color: Colors.black,
          ),
        ],
        leading: Icon(
          Icons.cancel,
          size: 30,
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Image.network(
                    widget.ak_image,
                    fit: BoxFit.cover,
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.ak_name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'cairo'),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  widget.ak_des,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'cairo'),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${widget.ak_wig} / ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.greenAccent,
                            fontFamily: 'cairo')),
                    Text("${widget.ak_price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.greenAccent,
                            fontFamily: 'cairo')),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(0.2),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "أختار نوع الساندويش",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'cairo'),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: RadioListTile(
                    value: "value",
                    title: Text("وجبة", style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'cairo')
                    ),
                    groupValue: ritem,
                    onChanged: (vale) {
                      setState(() {
                        ritem = "$vale";
                      });
                    }),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: RadioListTile(
                    value: "valuee",
                    title: Text("ساندويش", style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'cairo')),
                    groupValue: ritem,
                    onChanged: (val) {
                      setState(() {
                        ritem = "$val";
                      });
                    }),
              ),
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.grey.withOpacity(0.2),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "الاضافات + 500 د.ع",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'cairo'),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: CheckboxListTile(
                    title: Text("جبن",style: TextStyle(fontSize: 18,fontFamily: 'cairo')),
                    value: rittem,
                    onChanged: (valw) {
                      setState(() {
                        rittem = valw!;
                      });
                    }),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: CheckboxListTile(
                    title: Text("فطر",style: TextStyle(fontSize: 18, fontFamily: 'cairo'),),
                    value: riittem,
                    onChanged: (valwe) {
                      setState(() {
                        riittem = valwe!;
                      });
                    }),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: CheckboxListTile(
                    title: Text("فلفل حار",style: TextStyle(fontSize: 18, fontFamily: 'cairo'),),
                    value: riiittem,
                    onChanged: (valwe) {
                      setState(() {
                        riiittem = valwe!;
                      });
                    }),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: CheckboxListTile(
                    title: Text("شرائح نقانق",style: TextStyle(fontSize: 18, fontFamily: 'cairo'),),
                    value: riiiittem,
                    onChanged: (valwe) {
                      setState(() {
                        riiiittem = valwe!;
                      });
                    }),
              ),
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.grey.withOpacity(0.2),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "اي تعليمات خاصة ؟",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'cairo'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:  15.0,left: 15.0, top: 5,bottom: 5),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                      decoration: InputDecoration(
                        hintText: "أكتبها هنا",
                        hintTextDirection: TextDirection.rtl,
                        hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2,color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2,color: Colors.grey),
                        ),)
                  ),
                ),
              ),
              Container(
                height: 1.5,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 20, bottom: 10),
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _itemCount > 0
                      ? IconButton(
                          icon: Icon(Icons.remove,color: Colors.green,size: 30,),
                          onPressed: () => setState(() {
                            _itemCount--;
                          }),
                        )
                      : IconButton(
                           icon: Icon(Icons.remove,color: Colors.grey,size: 30,),
                           onPressed: (){},
                      ),
                  Text(_itemCount.toString(),style: TextStyle(fontSize: 25,),),
                  IconButton(
                      icon: Icon(Icons.add,color: Colors.green,size: 30,),
                      onPressed: () => setState(() {
                        _itemCount++;
                      }),)
                ],
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 10, bottom: 20),
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 30,
                    height: 50,
                    padding: const EdgeInsets.all(8.0),
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("6000 د.ع",style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'cairo'),),
                        Text("أضف الى السلة",style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'cairo'),),
                        Text("سلعة واحدة",style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'cairo'),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
