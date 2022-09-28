import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0.7,
          toolbarHeight: 0,
          bottom: const TabBar(
            indicatorColor: Color(0xFF00b593),
            tabs: <Widget>[
              Tab(
                child: Text("طلبات سابقة",style: TextStyle(color: Colors.black,fontSize: 22),),

              ),
              Tab(
                child: Text("الطلبات القادمة",style: TextStyle(color: Colors.black,fontSize: 22),),
              ),
            ],
          ),
        ),
        body:TabBarView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/3.jpg"),
                const Text("لا يوجد اي طلبات سابقة",style: TextStyle(fontSize: 30,color: Color(0xFF00b593)),),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/3.jpg"),
                const Text("لا يوجد اي طلبات قادمة",style: TextStyle(fontSize: 30,color: Color(0xFF00b593)),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
