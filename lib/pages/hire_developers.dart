import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:netcoreinfoproject/pages/Blogs.dart';
import 'package:netcoreinfoproject/pages/Login.dart';
import 'package:netcoreinfoproject/pages/company.dart';
import 'package:netcoreinfoproject/pages/constant.dart';
import 'package:netcoreinfoproject/pages/home.dart';
import 'package:netcoreinfoproject/pages/portfolio.dart';
import 'package:netcoreinfoproject/pages/services.dart';
import 'package:url_launcher/link.dart';

class HireDeveloper extends StatefulWidget {
  const HireDeveloper({Key? key}) : super(key: key);

  @override
  State<HireDeveloper> createState() => _HireDeveloperState();
}

class _HireDeveloperState extends State<HireDeveloper> {
  late ScrollController _controller;
  double pixels = 0.0;
  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        pixels = _controller.position.pixels;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
                controller: _controller,
                child: Column(children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 35),
                              child: Container(
                                width: 38,
                                height: 38,
                                decoration: BoxDecoration(
                                  // border: Border.all(
                                  // width: 2,
                                  // color: Colors.blue,
                                  //),
                                  //borderRadius: BorderRadius.circular(15),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/images/logo.png"),
                                      fit: BoxFit.cover
                                      //fit: BoxFit.fitHeight
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 27,
                          ),
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 13,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  Blogs()));
                                    },
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePage()));
                                      },
                                      child: HoverContainer(
                                        width: 50,
                                        height: 30,
                                        hoverWidth: 55,
                                        hoverHeight: 35,
                                        color: Colors.white,
                                        hoverColor: Colors.white,
                                        child: Text("Home",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 18, 68, 109),
                                                fontSize: 17,
                                                fontWeight: FontWeight.w700)),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 13, left: 50),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Services()));
                                    },
                                    child: HoverContainer(
                                      width: 65,
                                      height: 30,
                                      hoverHeight: 35,
                                      hoverWidth: 70,
                                      hoverColor: Colors.white,
                                      color: Colors.white,
                                      child: Text("Services",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 18, 78, 128),
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 13, left: 50),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  HireDeveloper()));
                                    },
                                    child: HoverContainer(
                                      width: 120,
                                      height: 30,
                                      hoverWidth: 125,
                                      hoverHeight: 35,
                                      hoverColor: Colors.white,
                                      color: Colors.white,
                                      child: Text("Hire Developers",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 23, 79, 126),
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 13, left: 50),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => Company()));
                                    },
                                    child: HoverContainer(
                                      width: 75,
                                      hoverWidth: 80,
                                      height: 30,
                                      hoverHeight: 35,
                                      hoverColor: Colors.white,
                                      color: Colors.white,
                                      child: Text("Company",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 18, 62, 99),
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 13, left: 50),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        Portfolio()));
                                      },
                                      child: HoverContainer(
                                        width: 75,
                                        height: 30,
                                        hoverWidth: 80,
                                        hoverHeight: 35,
                                        child: Text("Portfolio",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 19, 67, 105),
                                                fontSize: 17,
                                                fontWeight: FontWeight.w700)),
                                      ),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(top: 13, left: 50),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  Blogs()));
                                    },
                                    child: HoverContainer(
                                      width: 45,
                                      height: 30,
                                      hoverHeight: 35,
                                      hoverWidth: 50,
                                      hoverColor: Colors.white,
                                      color: Colors.white,
                                      child: Text("Blog",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 19, 69, 110),
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 13, left: 50),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  LoginPage()));
                                    },
                                    child: HoverContainer(
                                      width: 100,
                                      height: 30,
                                      hoverWidth: 105,
                                      hoverHeight: 35,
                                      color: Colors.white,
                                      hoverColor: Colors.white,
                                      child: Text("Contact Us",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 21, 72, 114),
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 790,
                      color: Colors.white,
                      child: Column(children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 350,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("assets/images/w8.jpg"),
                            //fit: BoxFit.cover
                          )),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          //color: Colors.red,
                          child: Row(
                            children: List.generate(catego.length, (index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Container(
                                  width: 175,
                                  height: 200,
                                  child: Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    catego[index]['assets']),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      ),
                                      Positioned(
                                        left: 40,
                                        top: 90,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            width: 80,
                                            height: 20,
                                            //color: Colors.white,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(1)),
                                            child: Center(
                                              child: Text(
                                                catego[index]['title'],
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 20,
                                        top: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            catego[index]['title1'],
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 30,
                                        top: 150,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            catego[index]['title2'],
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w200,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          left: 50,
                                          top: 170,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Container(
                                              width: 70,
                                              height: 70,
                                              decoration: BoxDecoration(
                                                  color: Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          35)),
                                            ),
                                          )),
                                      Positioned(
                                          top: 10,
                                          left: 40,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Container(
                                                width: 70,
                                                height: 70,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(35),
                                                ),
                                                child: Center(
                                                    child: Text(
                                                  catego[index]['title3'],
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                )),
                                              )))
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/logo.png"))),
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        "NETCOREINFO BUSINESS GROUP",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.phone,
                                        color: Colors.green,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 70),
                                        child: Column(
                                          children: [
                                            Text(
                                              "+91-9953045521",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            Text(
                                              "+91-9267952538",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.mail,
                                        color: Color.fromARGB(255, 173, 86, 80),
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 45),
                                            child: Text(
                                              "hr@netcoreinfo.com",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                          ),
                                          Text(
                                            "corporate@netcoreinfo.com",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "JOIN WITH US",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Row(
                                    children: [
                                      Link(
                                          uri: Uri.parse(
                                              "https://www.facebook.com/NetcoreInfo-Business-Solutions-109059025288761"),
                                          target: LinkTarget.blank,
                                          builder: (context, followLink) {
                                            return TextButton(
                                                onPressed: followLink,
                                                child: Icon(
                                                  FontAwesomeIcons.facebook,
                                                  color: Colors.blue,
                                                ));
                                          }),
                                      Link(
                                          uri: Uri.parse(
                                              "https://instagram.com/software_development_company_?igshid=Y2ZmNzg0YzQ="),
                                          target: LinkTarget.blank,
                                          builder: (context, followLink) {
                                            return TextButton(
                                                onPressed: followLink,
                                                child: Icon(
                                                  FontAwesomeIcons.instagram,
                                                  color: Color.fromARGB(
                                                      255, 146, 81, 77),
                                                ));
                                          }),
                                      Link(
                                          uri: Uri.parse(
                                              "https://www.youtube.com/channel/UCNcIrOcJFtar6hD9wUMU6lA"),
                                          target: LinkTarget.blank,
                                          builder: (context, followLink) {
                                            return TextButton(
                                                onPressed: followLink,
                                                child: Icon(
                                                  FontAwesomeIcons.youtube,
                                                  color: Colors.red,
                                                ));
                                          }),
                                      Link(
                                          uri: Uri.parse(
                                              "https://twitter.com/InfoNetcore"),
                                          target: LinkTarget.blank,
                                          builder: (context, followLink) {
                                            return TextButton(
                                                onPressed: followLink,
                                                child: Icon(
                                                  FontAwesomeIcons.twitter,
                                                  color: Colors.blue,
                                                ));
                                          }),
                                      Link(
                                          uri: Uri.parse(
                                              "https://www.linkedin.com/company/netcoreinfo-business-group/"),
                                          target: LinkTarget.blank,
                                          builder: (context, followLink) {
                                            return TextButton(
                                                onPressed: followLink,
                                                child: Icon(
                                                  FontAwesomeIcons.linkedin,
                                                  color: Color.fromARGB(
                                                      255, 23, 73, 114),
                                                ));
                                          }),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Become a Partner| FAQ|",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Copyright2004-2021.All Rights Reserved.",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "netcoreinfo.com",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 13,
                        )
                      ]))
                ]))));
  }
}
