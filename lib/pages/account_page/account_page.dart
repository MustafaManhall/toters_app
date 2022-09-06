import 'package:flutter/material.dart';

class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "مصطفى منهل",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            sidecard(context),
            first_cards(),
            second_cards(),
            third_cards(),
            Account_Details_Cards(),
            helpcenter(),
            signout(),
          ],
        ),
      ),
    );
  }

  Padding signout() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 2)
            ],
            color: Colors.white),
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "تسجيل خروج",
                        style: TextStyle(fontSize: 16, color: Colors.red),
                      ),
                      Icon(
                        Icons.logout_outlined,
                        color: Colors.red,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Padding helpcenter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 2)
            ],
            color: Colors.white),
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "مركز المساعدة",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                make("أطلب مساعدة", Icons.support_agent_outlined),
                line(),
                make("بطاقات مساعدة", Icons.message_outlined),
                line(),
                make("قانوني", Icons.gavel),
                line(),
                make("الأسئلة المتكررة", Icons.question_mark_rounded)
              ],
            )),
      ),
    );
  }

  Padding Account_Details_Cards() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 2)
            ],
            color: Colors.white),
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "تفاصيل الحساب",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                make("أشعارات", Icons.notifications_outlined),
                line(),
                make("العناوين", Icons.location_on_outlined),
                line(),
                make("أختياراتك", Icons.favorite_outline_outlined),
                line(),
                make("التفضيلات", Icons.list_rounded),
                line(),
                make("ادع أصدقاءك", Icons.person_add_alt)
              ],
            )),
      ),
    );
  }

  Padding make(String label, IconData iconname) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                label,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Icon(
              iconname,
              color: Colors.black.withOpacity(0.3),
              size: 25,
            ),
          ],
        ),
      ),
    );
  }

  Padding third_cards() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 2)
            ],
            color: Colors.white),
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "عروض خاصة",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "0 د.ع",
                            style: TextStyle(color: Colors.green, fontSize: 14),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            "رصيد",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        Icon(
                          Icons.monetization_on_outlined,
                          color: Colors.black.withOpacity(0.3),
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                ),
                line(),
                make("أضف رمز العرض", Icons.discount_outlined)
              ],
            )),
      ),
    );
  }

  Padding second_cards() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 2)
            ],
            color: Colors.white),
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.info_outline,
                        color: Colors.green,
                        size: 25,
                      ),
                    ),
                    Text(
                      "الرصيد النقدي لدى توترز",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            "0 د.ع",
                            style: TextStyle(color: Colors.green, fontSize: 14),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            "المحفظة",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        Icon(
                          Icons.wallet_outlined,
                          color: Colors.black.withOpacity(0.3),
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                ),
                line(),
                make("أضف الى الرصيد", Icons.add),
                line(),
                make("تحويل الأموال", Icons.north_east)
              ],
            )),
      ),
    );
  }

  Padding line() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Container(
        height: 1,
        color: Colors.black.withOpacity(0.1),
      ),
    );
  }

  Padding first_cards() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 2)
            ],
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              options("الملف الشخصي", Icons.manage_accounts_rounded),
              options("مركز المساعدة", Icons.support_agent_outlined),
              options("طرق الدفع", Icons.payment_outlined),
              options("اللغة", Icons.language_outlined)
            ],
          ),
        ),
      ),
    );
  }

  Padding sidecard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.green,
                size: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "الفئة الخضراء",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "0 نقطة",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.card_giftcard,
                color: Colors.green,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector options(String label, IconData iconname) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.2)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    iconname,
                    color: Colors.black45,
                    size: 25,
                  ),
                )),
            const SizedBox(
              height: 5,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
