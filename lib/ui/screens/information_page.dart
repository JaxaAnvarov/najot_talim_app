import 'package:flutter/material.dart';
import 'package:najot_talim_app/size_config.dart';
import 'package:najot_talim_app/ui/components/icons.dart';
import 'package:najot_talim_app/ui/models/helper/list_of_informations.dart';
import 'package:najot_talim_app/ui/screens/video_page.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: appBar(context),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(16.0),
              vertical: getProportionateScreenHeight(12.0),
            ),
            child: Container(
              height: getProportionateScreenHeight(150.0),
              width: getProportionateScreenWidth(343.0),
              decoration: BoxDecoration(
                color: Informations.colors[index],
                // color : Colors.cyan.shade200,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Container(
                    height: getProportionateScreenHeight(150.0),
                    width: getProportionateScreenWidth(140.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      ),
                      image: DecorationImage(
                          image: AssetImage(
                            Informations.images[index],
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(12.0)),
                  Container(
                    margin: EdgeInsets.only(
                      top: getProportionateScreenHeight(10.0),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: getProportionateScreenHeight(54.0),
                          width: getProportionateScreenWidth(171.0),
                          child: Text(
                            Informations.titles[index],
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Sans',
                              fontSize: getProportionateScreenWidth(14.0),
                            ),
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(4.0)),
                        Container(
                          alignment: Alignment.topLeft,
                          height: getProportionateScreenHeight(15.0),
                          width: getProportionateScreenWidth(170.0),
                          child: Text(
                            Informations.teachers[index],
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: const Color(0xFF8F9698),
                              fontSize: getProportionateScreenWidth(12.0),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Sans',
                            ),
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(15.0)),
                        Row(
                          children: [
                            Container(
                              child: Text(
                                "2 kun oldin yuklandi",
                                style: TextStyle(
                                  color: const Color(0xFF8F9698),
                                  fontSize: getProportionateScreenWidth(12.0),
                                ),
                              ),
                            ),
                            const SizedBox(width: 18.0),
                            IconButton(
                              icon: download,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoListPage(
                                      course_name: "UX/UI desing",
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30.0,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        "UX/UI darslari",
        style: TextStyle(
          color: Colors.black,
          fontSize: getProportionateScreenWidth(25.0),
          // fontWeight: FontWeight.w700,
          fontFamily: 'Sans',
        ),
      ),
      actions: [
        IconButton(
          icon: sms,
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Container(
                    height: getProportionateScreenHeight(250.0),
                    width: getProportionateScreenWidth(300.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: getProportionateScreenHeight(20.0),
                          child: Text(
                            "Foydalanish bo`yicha qo`llanma!",
                            style: TextStyle(
                              fontFamily: 'Sans',
                              fontSize: getProportionateScreenWidth(16.0),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              color: Colors.black,
                              icon: download,
                              onPressed: () {},
                            ),
                            Container(
                              child: Text(
                                "Videoni dasturga yuklab\nolish uchun!",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: getProportionateScreenWidth(14.0),
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: play,
                            ),
                            Container(
                              child: Text(
                                "Videoni offlayn ko'rish uchun !",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: getProportionateScreenWidth(14.0),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Videoni onlayn ko`rish uchun esa umumiy blok ustiga bosing!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: getProportionateScreenWidth(14.0),
                              fontFamily: 'Sans',
                            ),
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(30.0)),
                        InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            height: getProportionateScreenHeight(41.0),
                            width: getProportionateScreenWidth(259.0),
                            decoration: BoxDecoration(
                              color: const Color(0xFF31B9CC),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Tushunarli 👌',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: getProportionateScreenWidth(16.0),
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
        SizedBox(width: getProportionateScreenWidth(16.0)),
      ],
    );
  }
}
