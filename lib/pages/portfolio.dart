import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:netcoreinfoproject/pages/Blogs.dart';
import 'package:netcoreinfoproject/pages/Login.dart';
import 'package:netcoreinfoproject/pages/company.dart';
import 'package:netcoreinfoproject/pages/hire_developers.dart';
import 'package:netcoreinfoproject/pages/home.dart';
import 'package:netcoreinfoproject/pages/services.dart';
import 'package:url_launcher/link.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<String> imageList1 = [
    "assets/images/open.png",
    "assets/images/w40.jpeg",
    "assets/images/w11.jpeg",
    "assets/images/w12.jpeg",
    "assets/images/w15.jpeg",
  ];
  List<String> imageList2 = [
    "assets/images/w17.jpeg",
    "assets/images/w21.jpeg",
    "assets/images/w30.jpeg",
    "assets/images/w40.jpeg",
    "assets/images/w50.jpeg",
  ];
  List<String> imageList3 = [
    "assets/images/map.jpg",
    "assets/images/open.png",
    "assets/images/w11.jpeg",
    "assets/images/w12.jpeg",
    "assets/images/w15.jpeg",
  ];
  List<String> imageList4 = [
    "assets/images/map.jpg",
    "assets/images/open.png",
    "assets/images/w11.jpeg",
    "assets/images/w12.jpeg",
    "assets/images/w15.jpeg",
  ];
  List<String> imageList5 = [
    "assets/images/map.jpg",
    "assets/images/open.png",
    "assets/images/w11.jpeg",
    "assets/images/w12.jpeg",
    "assets/images/w15.jpeg",
  ];
  List<String> imageList6 = [
    "assets/images/map.jpg",
    "assets/images/open.png",
    "assets/images/w11.jpeg",
    "assets/images/w12.jpeg",
    "assets/images/w15.jpeg",
  ];
  List<String> imageList7 = [
    "assets/images/map.jpg",
    "assets/images/open.png",
    "assets/images/w11.jpeg",
    "assets/images/w12.jpeg",
    "assets/images/w15.jpeg",
  ];
  List<String> imageList8 = [
    "assets/images/map.jpg",
    "assets/images/open.png",
    "assets/images/w11.jpeg",
    "assets/images/w12.jpeg",
    "assets/images/w15.jpeg",
  ];

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
        child: Column(
          children: [
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
                                image: AssetImage("assets/images/logo.png"),
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Blogs()));
                              },
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => HomePage()));
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
                                          color:
                                              Color.fromARGB(255, 18, 68, 109),
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Services()));
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
                                        color: Color.fromARGB(255, 18, 78, 128),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 13, left: 50),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
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
                                        color: Color.fromARGB(255, 23, 79, 126),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 13, left: 50),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
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
                                        color: Color.fromARGB(255, 18, 62, 99),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700)),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 13, left: 50),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Portfolio()));
                                },
                                child: HoverContainer(
                                  width: 75,
                                  height: 30,
                                  hoverWidth: 80,
                                  hoverHeight: 35,
                                  child: Text("Portfolio",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 19, 67, 105),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700)),
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 13, left: 50),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
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
                                        color: Color.fromARGB(255, 19, 69, 110),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 13, left: 50),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
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
                                        color: Color.fromARGB(255, 21, 72, 114),
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
              height: 980,
              color: Colors.white,
              child: Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/pot1.png"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 550,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2,
                                        spreadRadius: 3)
                                  ]),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 250,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              bottomRight:
                                                  Radius.circular(40))),
                                      child: Center(
                                        child: Text(
                                          "Logo and Branding",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 8, bottom: 8),
                                    child: Container(
                                      width: 200,
                                      height: 150,
                                      //color: Colors.red,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/w15.jpeg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Column(
                                            children: [
                                              InkWell(
                                                onTap: _showdial1,
                                                child: Text(
                                                  "Know more",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromARGB(
                                                          255, 27, 63, 92)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: _showdial1,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color.fromARGB(
                                                255, 32, 74, 109),
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2,
                                        spreadRadius: 3)
                                  ]),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 250,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              bottomRight:
                                                  Radius.circular(40))),
                                      child: Center(
                                        child: Text(
                                          "Web Development",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 8, bottom: 8),
                                    child: Container(
                                      width: 200,
                                      height: 150,
                                      //color: Colors.red,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/7.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Column(
                                            children: [
                                              InkWell(
                                                onTap: _showdial2,
                                                child: Text(
                                                  "Know more",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromARGB(
                                                          255, 27, 63, 92)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: _showdial2,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color.fromARGB(
                                                255, 32, 74, 109),
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2,
                                        spreadRadius: 3)
                                  ]),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 250,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              bottomRight:
                                                  Radius.circular(40))),
                                      child: Center(
                                        child: Text(
                                          "Android Development",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 8, bottom: 8),
                                    child: Container(
                                      width: 200,
                                      height: 150,
                                      //color: Colors.red,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/w12.jpeg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Column(
                                            children: [
                                              InkWell(
                                                onTap: _showdial3,
                                                child: Text(
                                                  "Know more",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromARGB(
                                                          255, 27, 63, 92)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: _showdial3,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color.fromARGB(
                                                255, 32, 74, 109),
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2,
                                        spreadRadius: 3)
                                  ]),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 250,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              bottomRight:
                                                  Radius.circular(40))),
                                      child: Center(
                                        child: Text(
                                          "Ecommerce Development",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 8, bottom: 8),
                                    child: Container(
                                      width: 200,
                                      height: 150,
                                      //color: Colors.red,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/w40.jpeg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Column(
                                            children: [
                                              InkWell(
                                                onTap: _showdial4,
                                                child: Text(
                                                  "Know more",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromARGB(
                                                          255, 27, 63, 92)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: _showdial4,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color.fromARGB(
                                                255, 32, 74, 109),
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2,
                                        spreadRadius: 3)
                                  ]),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 250,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              bottomRight:
                                                  Radius.circular(40))),
                                      child: Center(
                                        child: Text(
                                          "ERP Solution",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 8, bottom: 8),
                                    child: Container(
                                      width: 200,
                                      height: 150,
                                      //color: Colors.red,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/w30.jpeg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Column(
                                            children: [
                                              InkWell(
                                                onTap: _showdial5,
                                                child: Text(
                                                  "Know more",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromARGB(
                                                          255, 27, 63, 92)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: _showdial5,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color.fromARGB(
                                                255, 32, 74, 109),
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2,
                                        spreadRadius: 3)
                                  ]),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 250,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              bottomRight:
                                                  Radius.circular(40))),
                                      child: Center(
                                        child: Text(
                                          "Application Hosting",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 8, bottom: 8),
                                    child: Container(
                                      width: 200,
                                      height: 150,
                                      //color: Colors.red,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/webhosting.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Column(
                                            children: [
                                              InkWell(
                                                onTap: _showdial6,
                                                child: Text(
                                                  "Know more",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromARGB(
                                                          255, 27, 63, 92)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: _showdial6,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color.fromARGB(
                                                255, 32, 74, 109),
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2,
                                        spreadRadius: 3)
                                  ]),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 250,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              bottomRight:
                                                  Radius.circular(40))),
                                      child: Center(
                                        child: Text(
                                          "CRM Development",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 8, bottom: 8),
                                    child: Container(
                                      width: 200,
                                      height: 150,
                                      //color: Colors.red,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/w11.jpeg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Column(
                                            children: [
                                              InkWell(
                                                onTap: _showdial7,
                                                child: Text(
                                                  "Know more",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromARGB(
                                                          255, 27, 63, 92)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: _showdial7,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color.fromARGB(
                                                255, 32, 74, 109),
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2,
                                        spreadRadius: 3)
                                  ]),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 250,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              bottomRight:
                                                  Radius.circular(40))),
                                      child: Center(
                                        child: Text(
                                          "Bulk/Sms Mailing",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 8, bottom: 8),
                                    child: Container(
                                      width: 200,
                                      height: 150,
                                      //color: Colors.red,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/open.png"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Column(
                                            children: [
                                              InkWell(
                                                onTap: _showdial8,
                                                child: Text(
                                                  "Know more",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromARGB(
                                                          255, 27, 63, 92)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: _showdial8,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color.fromARGB(
                                                255, 32, 74, 109),
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2,
                                        spreadRadius: 3)
                                  ]),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 250,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              bottomRight:
                                                  Radius.circular(40))),
                                      child: Center(
                                        child: Text(
                                          "Online Marketing",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 8, bottom: 8),
                                    child: Container(
                                      width: 200,
                                      height: 150,
                                      //color: Colors.red,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/w40.jpeg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Column(
                                            children: [
                                              InkWell(
                                                onTap: _showdial9,
                                                child: Text(
                                                  "Know more",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromARGB(
                                                          255, 27, 63, 92)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: _showdial9,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color.fromARGB(
                                                255, 32, 74, 109),
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2,
                                        spreadRadius: 3)
                                  ]),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 250,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              bottomRight:
                                                  Radius.circular(40))),
                                      child: Center(
                                        child: Text(
                                          "Technical Support",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 8, bottom: 8),
                                    child: Container(
                                      width: 200,
                                      height: 150,
                                      //color: Colors.red,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/w17.jpeg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Column(
                                            children: [
                                              InkWell(
                                                onTap: _showdial10,
                                                child: Text(
                                                  "Know more",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromARGB(
                                                          255, 27, 63, 92)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: _showdial10,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color.fromARGB(
                                                255, 32, 74, 109),
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2,
                                        spreadRadius: 3)
                                  ]),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 250,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              bottomRight:
                                                  Radius.circular(40))),
                                      child: Center(
                                        child: Text(
                                          "Business Consultant",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 8, bottom: 8),
                                    child: Container(
                                      width: 200,
                                      height: 150,
                                      //color: Colors.red,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/w50.jpeg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Column(
                                            children: [
                                              InkWell(
                                                onTap: _showdial11,
                                                child: Text(
                                                  "Know more",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color.fromARGB(
                                                          255, 27, 63, 92)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: _showdial11,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color.fromARGB(
                                                255, 32, 74, 109),
                                            size: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ]),
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
                                    image:
                                        AssetImage("assets/images/logo.png"))),
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
                            padding: const EdgeInsets.only(right: 70),
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
                                padding: const EdgeInsets.only(right: 45),
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
                                    fontSize: 15, fontWeight: FontWeight.w800),
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
                            fontSize: 17, fontWeight: FontWeight.w700),
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
                                      color: Color.fromARGB(255, 146, 81, 77),
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
                              uri: Uri.parse("https://twitter.com/InfoNetcore"),
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
                                      color: Color.fromARGB(255, 23, 73, 114),
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
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              "Copyright2004-2021.All Rights Reserved.",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Text(
              "netcoreinfo.com",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 13,
            )
          ],
        ),
      ),
    ));
  }

  void _showdial1() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(actions: [
            Container(
              height: 500,
              width: 600,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "LOGO AND BRANDING",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          //fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Container(
                            height: 400,
                            width: 500,
                            color: Colors.white,
                            child: CarouselSlider(
                                items: imageList2
                                    .map((e) => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              Image.asset(
                                                e,
                                                height: 50,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                fit: BoxFit.cover,
                                              )
                                            ],
                                          ),
                                        ))
                                    .toList(),
                                options: CarouselOptions(
                                    autoPlay: true,
                                    enlargeCenterPage: true,
                                    height: 400)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]);
        });
  }

  void _showdial2() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(actions: [
            Container(
              height: 500,
              width: 600,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Web Design/Development",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          //fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Container(
                            height: 400,
                            width: 500,
                            color: Colors.white,
                            child: CarouselSlider(
                                items: imageList3
                                    .map((e) => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              Image.asset(
                                                e,
                                                height: 50,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                fit: BoxFit.cover,
                                              )
                                            ],
                                          ),
                                        ))
                                    .toList(),
                                options: CarouselOptions(
                                    autoPlay: true,
                                    enlargeCenterPage: true,
                                    height: 400)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]);
        });
  }

  void _showdial3() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(actions: [
            Container(
              height: 500,
              width: 600,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Android Development",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          //fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Container(
                            height: 400,
                            width: 500,
                            color: Colors.white,
                            child: CarouselSlider(
                                items: imageList4
                                    .map((e) => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              Image.asset(
                                                e,
                                                height: 50,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                fit: BoxFit.cover,
                                              )
                                            ],
                                          ),
                                        ))
                                    .toList(),
                                options: CarouselOptions(
                                    autoPlay: true,
                                    enlargeCenterPage: true,
                                    height: 400)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]);
        });
  }

  void _showdial4() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(actions: [
            Container(
              height: 500,
              width: 600,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Ecommerce Development",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          //fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Container(
                            height: 400,
                            width: 500,
                            color: Colors.white,
                            child: CarouselSlider(
                                items: imageList5
                                    .map((e) => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              Image.asset(
                                                e,
                                                height: 50,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                fit: BoxFit.cover,
                                              )
                                            ],
                                          ),
                                        ))
                                    .toList(),
                                options: CarouselOptions(
                                    autoPlay: true,
                                    enlargeCenterPage: true,
                                    height: 400)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]);
        });
  }

  void _showdial5() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(actions: [
            Container(
              height: 500,
              width: 600,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "ERP Solution",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          //fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Container(
                            height: 400,
                            width: 500,
                            color: Colors.white,
                            child: CarouselSlider(
                                items: imageList6
                                    .map((e) => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              Image.asset(
                                                e,
                                                height: 50,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                fit: BoxFit.cover,
                                              )
                                            ],
                                          ),
                                        ))
                                    .toList(),
                                options: CarouselOptions(
                                    autoPlay: true,
                                    enlargeCenterPage: true,
                                    height: 400)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]);
        });
  }

  void _showdial6() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(actions: [
            Container(
              height: 410,
              width: 600,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Hosting Services",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17, right: 17),
                    child: Text(
                      "Top Web Hosting Services in Noida:- Web hosting is a service that allows the organizations and individuals to publish a website (website design company in delhi ncr) on the internet. In simple terms, web hosting service is a business and it offers the technologies required for the website to be viewed/represented on the internet. Most probably the websites or web pages are hosted and saved on a special computer known as servers.",
                      textAlign: TextAlign.justify,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17, right: 17),
                    child: Text(
                      "We offer the best web hosting service and support available anywhere. From WordPress blogs and portfolio sites to small business sites, e-commerce ( best e-commerce development services in noida), and beyond, NetcoreInfo Business Services has a reliable hosting plan that’s right for you. We provide cheap & best web hosting services to our customers or clients. We understand that, Small companies needs low cost plan, that's why we have come up with affordable hosting price for our customers & have maintained our position as one of the best service providers in India.",
                      textAlign: TextAlign.justify,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ]);
        });
  }

  void _showdial7() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(actions: [
            Container(
              height: 500,
              width: 600,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "CRM Development",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          //fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Container(
                            height: 400,
                            width: 500,
                            color: Colors.white,
                            child: CarouselSlider(
                                items: imageList8
                                    .map((e) => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              Image.asset(
                                                e,
                                                height: 50,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                fit: BoxFit.cover,
                                              )
                                            ],
                                          ),
                                        ))
                                    .toList(),
                                options: CarouselOptions(
                                    autoPlay: true,
                                    enlargeCenterPage: true,
                                    height: 400)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]);
        });
  }

  void _showdial8() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(actions: [
            Container(
              height: 500,
              width: 600,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Bulk/Sms Mailing",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          //fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Container(
                            height: 400,
                            width: 500,
                            color: Colors.white,
                            child: CarouselSlider(
                                items: imageList1
                                    .map((e) => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              Image.asset(
                                                e,
                                                height: 50,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                fit: BoxFit.cover,
                                              )
                                            ],
                                          ),
                                        ))
                                    .toList(),
                                options: CarouselOptions(
                                    autoPlay: true,
                                    enlargeCenterPage: true,
                                    height: 400)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]);
        });
  }

  void _showdial9() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(actions: [
            Container(
              height: 500,
              width: 600,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Online Marketing",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          //fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Container(
                            height: 400,
                            width: 500,
                            color: Colors.white,
                            child: CarouselSlider(
                                items: imageList1
                                    .map((e) => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              Image.asset(
                                                e,
                                                height: 50,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                fit: BoxFit.cover,
                                              )
                                            ],
                                          ),
                                        ))
                                    .toList(),
                                options: CarouselOptions(
                                    autoPlay: true,
                                    enlargeCenterPage: true,
                                    height: 400)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]);
        });
  }

  void _showdial10() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(actions: [
            Container(
              height: 500,
              width: 600,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 300,
                    height: 500,
                    child: Form(
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "ENQUIRY FORM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 27,
                                //fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Firstname',
                              hintText: 'Enter Firstname',
                              prefixIcon: Icon(Icons.person),
                            ),
                            validator: (value) {
                              return value!.isEmpty
                                  ? 'Please enter firstname'
                                  : null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Lastname',
                              hintText: 'Enter Lastname',
                              prefixIcon: Icon(Icons.person),
                            ),
                            validator: (value) {
                              return value!.isEmpty
                                  ? 'Please enter latname'
                                  : null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter Email',
                              prefixIcon: Icon(Icons.email),
                            ),
                            validator: (value) {
                              return value!.isEmpty
                                  ? 'Please enter Email'
                                  : null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter Password',
                              prefixIcon: Icon(Icons.password),
                            ),
                            validator: (value) {
                              return value!.isEmpty
                                  ? 'Please enter Password'
                                  : null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10),
                          child: TextFormField(
                            maxLines: 5,
                            decoration: InputDecoration(
                              hintMaxLines: 5,
                              hintText: 'Enter Message for query',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 230,
                          height: 40,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey),
                                child: Center(child: Text('Enquiry')),
                              ),
                              Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey),
                                child: Center(child: Text('Cancel')),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                  ),
                  Container(
                    height: 500,
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "What’s Next?",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "An email and phone call  ",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.justify,
                            )
                          ],
                        ),
                        Text("from one of our representatives",
                            style: TextStyle(fontSize: 15)),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "A time & cost estimation.",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.justify,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "An in-person meeting.",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.justify,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Text("Give us a call", style: TextStyle(fontSize: 15)),
                        SizedBox(
                          height: 3,
                        ),
                        Text("+91-99530 45521",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 29, 82, 126))),
                        SizedBox(
                          height: 2,
                        ),
                        Text("+91-9267952538",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 29, 82, 126))),
                        SizedBox(
                          height: 17,
                        ),
                        Text("Send us an email",
                            style: TextStyle(fontSize: 15)),
                        SizedBox(
                          height: 3,
                        ),
                        Text("corporate@netcoreinfo.com",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 29, 82, 126))),
                        SizedBox(
                          height: 2,
                        ),
                        Text("hr@netcoreinfo.com",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 29, 82, 126))),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]);
        });
  }

  void _showdial11() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(actions: [
            Container(
              height: 500,
              width: 600,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 300,
                    height: 500,
                    child: Form(
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "ENQUIRY FORM",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 27,
                                //fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Firstname',
                              hintText: 'Enter Firstname',
                              prefixIcon: Icon(Icons.person),
                            ),
                            validator: (value) {
                              return value!.isEmpty
                                  ? 'Please enter firstname'
                                  : null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Lastname',
                              hintText: 'Enter Lastname',
                              prefixIcon: Icon(Icons.person),
                            ),
                            validator: (value) {
                              return value!.isEmpty
                                  ? 'Please enter latname'
                                  : null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter Email',
                              prefixIcon: Icon(Icons.email),
                            ),
                            validator: (value) {
                              return value!.isEmpty
                                  ? 'Please enter Email'
                                  : null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter Password',
                              prefixIcon: Icon(Icons.password),
                            ),
                            validator: (value) {
                              return value!.isEmpty
                                  ? 'Please enter Password'
                                  : null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10),
                          child: TextFormField(
                            maxLines: 5,
                            decoration: InputDecoration(
                              hintMaxLines: 5,
                              hintText: 'Enter Message for query',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 230,
                          height: 40,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey),
                                child: Center(child: Text('Enquiry')),
                              ),
                              Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey),
                                child: Center(child: Text('Cancel')),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                  ),
                  Container(
                    height: 500,
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "What’s Next?",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "An email and phone call  ",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.justify,
                            )
                          ],
                        ),
                        Text("from one of our representatives",
                            style: TextStyle(fontSize: 15)),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "A time & cost estimation.",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.justify,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "An in-person meeting.",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.justify,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Text("Give us a call", style: TextStyle(fontSize: 15)),
                        SizedBox(
                          height: 3,
                        ),
                        Text("+91-99530 45521",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 29, 82, 126))),
                        SizedBox(
                          height: 2,
                        ),
                        Text("+91-9267952538",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 29, 82, 126))),
                        SizedBox(
                          height: 17,
                        ),
                        Text("Send us an email",
                            style: TextStyle(fontSize: 15)),
                        SizedBox(
                          height: 3,
                        ),
                        Text("corporate@netcoreinfo.com",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 29, 82, 126))),
                        SizedBox(
                          height: 2,
                        ),
                        Text("hr@netcoreinfo.com",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 29, 82, 126))),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]);
        });
  }
}
