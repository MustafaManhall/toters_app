import 'package:flutter/material.dart';

class akla_page extends StatefulWidget {
  const akla_page({Key? key}) : super(key: key);

  @override
  State<akla_page> createState() => _akla_pageState();
}

class _akla_pageState extends State<akla_page> {
  String ritem = "";
  bool rittem = true;
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Icon(Icons.share,size: 30,color: Colors.black,),
          SizedBox(width: 20,),
          Icon(Icons.favorite_border,size: 30,color: Colors.black,),
        ],
        leading: Icon(Icons.cancel,size: 30,color: Colors.black,),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
               child: Image.network("https://shamlola.s3.amazonaws.com/Shamlola_Images/9/src/e99c963d776c8771c68b30e946cbbda42860ceef.jpg",
               fit: BoxFit.cover,
               )
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("chicen Madfoun platter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("IQD 13,000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.greenAccent)),
              ),
              SizedBox(height: 10,),
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(0.6),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("choose Portion",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              RadioListTile(
              value: "value",
              title: Text("Half chicken"),
              groupValue: ritem,
              onChanged: (vale){
                setState(() {
                  ritem = "$vale";
                });
              }),
              RadioListTile(
                  value: "valueeee",
                  title: Row(
                  children: [
                    Text("Whole chicken"),
                    Text("  + 12,000",style: TextStyle(color: Colors.grey.withOpacity(0.6),),),
                  ],
                  ),
                  groupValue: ritem,
                  onChanged: (val){
                    setState(() {
                      ritem = "$val";
                    });
                  }),
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.grey.withOpacity(0.6),
              ),
              CheckboxListTile(
                  title: Text("Medghia"),
                  value: rittem,
                  onChanged: (valw) {
                    setState(() {
                      rittem = valw!;
                    });
              }),
              CheckboxListTile(
                  title: Text("Megdia"),
                  value: rittem,
                  onChanged: (valwe) {
                    setState(() {
                      rittem = valwe!;
                    });
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _itemCount!=0?
                  IconButton(icon:Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount--),) : Container(),
                  Text(_itemCount.toString()),
                  IconButton(icon:Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount++))
                ],
              ),
            ],

          )
        ],
      ),
    );
  }
}
