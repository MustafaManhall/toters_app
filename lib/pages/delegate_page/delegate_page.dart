import 'package:flutter/material.dart';

class delegate extends StatefulWidget {
  const delegate({Key? key}) : super(key: key);

  @override
  State<delegate> createState() => _delegateState();
}

class _delegateState extends State<delegate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF00b593),
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 150,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("!نوصل أي شي يسع على متن دراجة نارية",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(":أطلب المندوب ل",style: TextStyle(fontSize: 23),),
          ),
          Container(
            height: 150,width: MediaQuery.of(context).size.width - 30,
            margin: EdgeInsets.only(left: 15,top: 20,bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.3),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back_ios,size: 30,color: Color(0xFF00b593),),
                ),
                Image.asset("images/4.jpg",height: 100,width: 100,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("توصيل احتياجاتك",style: TextStyle(color: Color(0xFF00b593),fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("مثلا نسيت مفتاحك بالبيت وتريد \n احد يوصله لك للمكتب",
                        style: TextStyle(color: Colors.grey,
                          fontSize: 18,),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,width: MediaQuery.of(context).size.width - 30,
            margin: EdgeInsets.only(left: 15,top: 20,bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.3),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back_ios,size: 30,color: Color(0xFF00b593),),
                ),
                Image.asset("images/5.jpg",height: 100,width: 100,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("شراء احتياجاتك",style: TextStyle(color: Color(0xFF00b593),fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("ما لقيت اللي تريدة بتطبيقنا؟\nمندوب توترز يقدر يشتري لك \nالي تحتاجة من اي مكان \nتختاره",
                        style: TextStyle(color: Colors.grey,
                          fontSize: 18,),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
