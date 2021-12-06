import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:najot_talim_app/size_config.dart';
import 'package:najot_talim_app/ui/components/icons.dart';
import 'package:najot_talim_app/ui/models/helper/list_of_icons.dart';
import 'package:najot_talim_app/ui/screens/information_page.dart';

class HomePage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 30.0, left: 20.0),
                child: Text(
                  "Qanday darslar sizni\nqiziqtiradi?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(25.0),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0, right: 150.0),
                child: Text(
                  "28 xil yo'nalishda darsliklar mavjud",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: getProportionateScreenWidth(12.0),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(16.0),
                  vertical: getProportionateScreenHeight(22.0),
                ),
                child: TextFormField(
                  controller: _controller,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF1F2F6),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Izlash',
                    labelText: 'Izlash',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.search,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(19.0)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenHeight(16.0)),
                child: Container(
                  height: getProportionateScreenHeight(100.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenHeight(16.0)),
                            child: Container(
                              height: getProportionateScreenHeight(72),
                              width: getProportionateScreenWidth(71),
                              decoration: BoxDecoration(
                                color: Componets.colors[index],
                                borderRadius: BorderRadius.circular(16.0),
                                image: DecorationImage(
                                  image: AssetImage(
                                    Componets.images[index],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(6.0)),
                          Text(
                            Componets.names[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: getProportionateScreenWidth(12.0),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(24.0)),
              Container(
                margin: const EdgeInsets.only(right: 196.0),
                child: Text(
                  "Dizaynga oid kurslar",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: getProportionateScreenWidth(16.0),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(14.0)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InformationPage(),
                    ),
                  );
                },
                child: Container(
                  height: getProportionateScreenHeight(233.0),
                  width: getProportionateScreenWidth(343.0),
                  decoration: BoxDecoration(
                    color: Colors.cyan.shade100,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenHeight(7.0),
                          vertical: getProportionateScreenWidth(8.0),
                        ),
                        child: Container(
                          height: getProportionateScreenHeight(136.0),
                          width: getProportionateScreenWidth(329.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black,
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/ui.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(
                              left: 16.0,
                              right: 231.0,
                              top: 79.0,
                              bottom: 19.0,
                            ),
                            width: getProportionateScreenWidth(82.0),
                            height: getProportionateScreenHeight(35.0),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF1F2F6),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Text(
                              '12 ta darslik',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(8.0)),
                      Container(
                        margin: const EdgeInsets.only(right: 243.0, left: 12.0),
                        child: Text(
                          "UX/UI dizayn",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(14.0),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(4.0)),
                      Container(
                        margin: const EdgeInsets.only(right: 151.0, left: 20.0),
                        child: Text(
                          "Boshlang`ich darajadagilar uchun",
                          style: TextStyle(
                            color: const Color(0xFF8F9698),
                            fontSize: getProportionateScreenWidth(12.0),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5.0)),
                      Container(
                        margin: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.tag_faces_outlined,
                              size: 20.0,
                              color: Color(0xFF31B9CC),
                            ),
                            SizedBox(width: getProportionateScreenWidth(7.0)),
                            Text(
                              "97%",
                              style: TextStyle(
                                  color: const Color(0xFF31B9CC),
                                  fontWeight: FontWeight.w700,
                                  fontSize: getProportionateScreenWidth(12.0)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(8.0)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(11.0)),
              Container(
                height: getProportionateScreenHeight(233.0),
                width: getProportionateScreenWidth(343.0),
                decoration: BoxDecoration(
                  color: Colors.cyan.shade100,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenHeight(7.0),
                        vertical: getProportionateScreenWidth(8.0),
                      ),
                      child: Container(
                        height: getProportionateScreenHeight(136.0),
                        width: getProportionateScreenWidth(329.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.black,
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/mou.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(
                            left: 16.0,
                            right: 231.0,
                            top: 79.0,
                            bottom: 19.0,
                          ),
                          width: getProportionateScreenWidth(82.0),
                          height: getProportionateScreenHeight(35.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF1F2F6),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Text(
                            '9 ta darslik',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(8.0)),
                    Container(
                      margin: const EdgeInsets.only(right: 220.0),
                      child: Text(
                        "Moushn dizayn",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(14.0),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(4.0)),
                    Container(
                      margin: const EdgeInsets.only(right: 151.0, left: 16.0),
                      child: Text(
                        "Boshlang`ich darajadagilar uchun",
                        style: TextStyle(
                          color: const Color(0xFF8F9698),
                          fontSize: getProportionateScreenWidth(12.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(5.0)),
                    Container(
                      margin: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.tag_faces_outlined,
                            size: 20.0,
                            color: Color(0xFF31B9CC),
                          ),
                          SizedBox(width: getProportionateScreenWidth(7.0)),
                          Text(
                            "97%",
                            style: TextStyle(
                                color: const Color(0xFF31B9CC),
                                fontWeight: FontWeight.w700,
                                fontSize: getProportionateScreenWidth(12.0)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(8.0)),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(11.0)),
              Container(
                height: getProportionateScreenHeight(233.0),
                width: getProportionateScreenWidth(343.0),
                decoration: BoxDecoration(
                  color: Colors.cyan.shade100,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenHeight(7.0),
                        vertical: getProportionateScreenWidth(8.0),
                      ),
                      child: Container(
                        height: getProportionateScreenHeight(136.0),
                        width: getProportionateScreenWidth(329.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.black,
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/smm.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(
                            left: 16.0,
                            right: 231.0,
                            top: 79.0,
                            bottom: 19.0,
                          ),
                          width: getProportionateScreenWidth(82.0),
                          height: getProportionateScreenHeight(35.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF1F2F6),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Text(
                            '18 ta darslik',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(8.0)),
                    Container(
                      margin: const EdgeInsets.only(right: 243.0, left: 12.0),
                      child: Text(
                        "Smm kurslari",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(14.0),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(4.0)),
                    Container(
                      margin: const EdgeInsets.only(right: 151.0, left: 16.0),
                      child: Text(
                        "Boshlang`ich darajadagilar uchun",
                        style: TextStyle(
                          color: const Color(0xFF8F9698),
                          fontSize: getProportionateScreenWidth(12.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(5.0)),
                    Container(
                      margin: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.tag_faces_outlined,
                            size: 20.0,
                            color: Color(0xFF31B9CC),
                          ),
                          SizedBox(width: getProportionateScreenWidth(7.0)),
                          Text(
                            "97%",
                            style: TextStyle(
                                color: const Color(0xFF31B9CC),
                                fontWeight: FontWeight.w700,
                                fontSize: getProportionateScreenWidth(12.0)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(8.0)),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(11.0)),
              Container(
                height: getProportionateScreenHeight(233.0),
                width: getProportionateScreenWidth(343.0),
                decoration: BoxDecoration(
                  color: Colors.cyan.shade100,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenHeight(7.0),
                        vertical: getProportionateScreenWidth(8.0),
                      ),
                      child: Container(
                        height: getProportionateScreenHeight(136.0),
                        width: getProportionateScreenWidth(329.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color(0xFFF3F3ED),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/f.png',
                            ),
                            // fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(
                            left: 16.0,
                            right: 231.0,
                            top: 79.0,
                            bottom: 19.0,
                          ),
                          width: getProportionateScreenWidth(82.0),
                          height: getProportionateScreenHeight(35.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF1F2F6),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Text(
                            '23 ta darslik',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(8.0)),
                    Container(
                      margin: const EdgeInsets.only(right: 243.0, left: 3.0),
                      child: Text(
                        "Foundation",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(14.0),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(4.0)),
                    Container(
                      margin: const EdgeInsets.only(right: 151.0, left: 20.0),
                      child: Text(
                        "Boshlang`ich darajadagilar uchun",
                        style: TextStyle(
                          color: const Color(0xFF8F9698),
                          fontSize: getProportionateScreenWidth(12.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(5.0)),
                    Container(
                      margin: const EdgeInsets.only(left: 18.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.tag_faces_outlined,
                            size: 20.0,
                            color: Color(0xFF31B9CC),
                          ),
                          SizedBox(width: getProportionateScreenWidth(7.0)),
                          Text(
                            "97%",
                            style: TextStyle(
                                color: const Color(0xFF31B9CC),
                                fontWeight: FontWeight.w700,
                                fontSize: getProportionateScreenWidth(12.0)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(8.0)),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(11.0)),
              Container(
                height: getProportionateScreenHeight(233.0),
                width: getProportionateScreenWidth(343.0),
                decoration: BoxDecoration(
                  color: Colors.cyan.shade100,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenHeight(7.0),
                        vertical: getProportionateScreenWidth(8.0),
                      ),
                      child: Container(
                        height: getProportionateScreenHeight(136.0),
                        width: getProportionateScreenWidth(329.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color(0xFFF3F3ED),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/flutter.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(
                            left: 16.0,
                            right: 231.0,
                            top: 79.0,
                            bottom: 19.0,
                          ),
                          width: getProportionateScreenWidth(82.0),
                          height: getProportionateScreenHeight(35.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF1F2F6),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Text(
                            '29 ta darslik',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(8.0)),
                    Container(
                      margin: const EdgeInsets.only(right: 243.0, left: 6.0),
                      child: Text(
                        "Flutter kursi",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(14.0),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(4.0)),
                    Container(
                      margin: const EdgeInsets.only(right: 151.0, left: 20.0),
                      child: Text(
                        "Boshlang`ich darajadagilar uchun",
                        style: TextStyle(
                          color: const Color(0xFF8F9698),
                          fontSize: getProportionateScreenWidth(12.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(5.0)),
                    Container(
                      margin: const EdgeInsets.only(left: 19.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.tag_faces_outlined,
                            size: 20.0,
                            color: Color(0xFF31B9CC),
                          ),
                          SizedBox(width: getProportionateScreenWidth(7.0)),
                          Text(
                            "97%",
                            style: TextStyle(
                                color: const Color(0xFF31B9CC),
                                fontWeight: FontWeight.w700,
                                fontSize: getProportionateScreenWidth(12.0)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(8.0)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
