import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:netcoreinfoproject/pages/Blogs.dart';
import 'package:netcoreinfoproject/pages/Login.dart';
import 'package:netcoreinfoproject/pages/Services/ContentMarketing.dart';
import 'package:netcoreinfoproject/pages/Services/ERP_Solution.dart';
import 'package:netcoreinfoproject/pages/Services/Ecommerce_development.dart';
import 'package:netcoreinfoproject/pages/Services/Graphics&print.dart';
import 'package:netcoreinfoproject/pages/Services/Multivendor_Ecommerce.dart';
import 'package:netcoreinfoproject/pages/Services/Ppcmanagement.dart';
import 'package:netcoreinfoproject/pages/Services/Search_engine.dart';
import 'package:netcoreinfoproject/pages/Services/Training.dart';
import 'package:netcoreinfoproject/pages/Services/Web_hosting.dart';
import 'package:netcoreinfoproject/pages/Services/logo&branding.dart';
import 'package:netcoreinfoproject/pages/Services/open_source.dart';
import 'package:netcoreinfoproject/pages/Services/socialmedia.dart';
import 'package:netcoreinfoproject/pages/Services/software_development.dart';
import 'package:netcoreinfoproject/pages/Services/web_development.dart';
import 'package:netcoreinfoproject/pages/company.dart';
import 'package:netcoreinfoproject/pages/constant.dart';
import 'package:netcoreinfoproject/pages/hire_developers.dart';
import 'package:netcoreinfoproject/pages/mobile.dart';
import 'package:netcoreinfoproject/pages/portfolio.dart';
import 'package:netcoreinfoproject/pages/services.dart';
import 'package:netcoreinfoproject/pages/sigin.dart';
import 'package:url_launcher/link.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<String> imageList = [
    "assets/images/birla.jpg",
    "assets/images/logo4.jpg",
    "assets/images/logo5.png",
    "assets/images/b4.png",
    "assets/images/b1.jpg",
    "assets/images/b9.jpg"
  ];
  static const colorizedColors = [
    Colors.blue,
    Colors.white,
    Colors.red,
    Colors.green
  ];
  static const colorizedTextstyle = TextStyle(fontSize: 22);

  late ScrollController _controller;
  late final PageController pageController;
  double pixels = 0.0;
  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.95);
    carasouelTimer = getTimer();
    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        pixels = _controller.position.pixels;
      });
    });
  }

  int pageNo = 0;
  late final Timer carasouelTimer;
  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 2), (timer) {
      if (pageNo == 5) {
        pageNo = 0;
      }
      pageController.animateToPage(pageNo,
          duration: const Duration(seconds: 1), curve: Curves.easeInOutCirc);
      pageNo++;
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    // TODO: implement dispose
    super.dispose();
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
                    width: MediaQuery.of(context).size.width,
                    height: 600,
                    decoration: const BoxDecoration(
                      // color: Colors.black.withOpacity(0.5),
                      image: DecorationImage(
                          image: AssetImage("assets/images/h5.jpg"),
                          fit: BoxFit.cover),
                      color: Colors.transparent,
                      // color: Color.fromARGB(255, 39, 79, 112)
                      //color: Color.fromARGB(255, 17, 41, 61),
                    ),
                    child: Stack(
                      children: [
                        //Positioned(
                        // top: 35,
                        // right: 0,
                        //child: Container(
                        // height: 500,
                        // width: 600,
                        // child: Lottie.network(
                        //"https://assets1.lottiefiles.com/packages/lf20_p1qiuawe.json"
                        //      "https://assets3.lottiefiles.com/packages/lf20_p1qiuawe.json"),
                        // )),
                        Positioned(
                          top: 10,
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Container(
                                        width: 55,
                                        height: 55,
                                        decoration: BoxDecoration(
                                          //border:
                                          // Border.all(color: Colors.white60),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/logo.png"),
                                            // fit: BoxFit.cover
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(),
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
                                                      builder: (BuildContext
                                                              context) =>
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
                                                // color: Colors.white,
                                                // hoverColor: Colors.white,
                                                child: Text("Home",
                                                    style: TextStyle(
                                                        color: Colors.white70,
                                                        // color:
                                                        //   Color.fromARGB(255, 18, 68, 109),
                                                        // Color.fromARGB(255, 18, 68, 109),
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 13, left: 50),
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
                                              //hoverColor: Colors.white,
                                              //color: Colors.white,
                                              child: Text("Services",
                                                  style: TextStyle(
                                                      color: Colors.white70,
                                                      //color: Color.fromARGB(255, 18, 68, 109),
                                                      // Color.fromARGB(255, 18, 78, 128),
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 13, left: 50),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (BuildContext
                                                              context) =>
                                                          HireDeveloper()));
                                            },
                                            child: HoverContainer(
                                              width: 130,
                                              height: 30,
                                              hoverWidth: 130,
                                              hoverHeight: 35,
                                              //hoverColor: Colors.white,
                                              //color: Colors.white,
                                              child: Text("Hire Developers",
                                                  style: TextStyle(
                                                      color: Colors.white70,
                                                      //color: Color.fromARGB(255, 18, 68, 109),
                                                      // Color.fromARGB(255, 23, 79, 126),
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 13, left: 50),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Company()));
                                            },
                                            child: HoverContainer(
                                              width: 78,
                                              hoverWidth: 80,
                                              height: 30,
                                              hoverHeight: 35,
                                              // hoverColor: Colors.white,
                                              // color: Colors.white,
                                              child: Text("Company",
                                                  style: TextStyle(
                                                      color: Colors.white70,
                                                      // color: Color.fromARGB(255, 18, 68, 109),
                                                      // Color.fromARGB(255, 18, 62, 99),
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 13, left: 50),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (BuildContext
                                                                context) =>
                                                            Portfolio()));
                                              },
                                              child: HoverContainer(
                                                width: 75,
                                                height: 30,
                                                hoverWidth: 80,
                                                hoverHeight: 35,
                                                child: Text("Portfolio",
                                                    style: TextStyle(
                                                        color: Colors.white70,
                                                        // color:
                                                        //  Color.fromARGB(255, 18, 68, 109),
                                                        // Color.fromARGB(255, 19, 67, 105),
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ),
                                            )),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 13, left: 50),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (BuildContext
                                                              context) =>
                                                          Blogs()));
                                            },
                                            child: HoverContainer(
                                              width: 45,
                                              height: 30,
                                              hoverHeight: 35,
                                              hoverWidth: 50,
                                              // hoverColor: Colors.white,
                                              //color: Colors.white,
                                              child: Text("Blog",
                                                  style: TextStyle(
                                                      color: Colors.white70,
                                                      //color: Color.fromARGB(255, 18, 68, 109),
                                                      // Color.fromARGB(255, 19, 69, 110),
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 13, left: 50),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (BuildContext
                                                              context) =>
                                                          LoginPage()));
                                            },
                                            child: HoverContainer(
                                              width: 100,
                                              height: 30,
                                              hoverWidth: 105,
                                              hoverHeight: 35,
                                              //color: Colors.white,
                                              //hoverColor: Colors.red,
                                              child: Text("Contact Us",
                                                  style: TextStyle(
                                                      color: Colors.white70,
                                                      //color: Color.fromARGB(255, 18, 68, 109),

                                                      //Color.bluefromARGB(255, 21, 72, 114),
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w500)),
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
                        ),
                        Positioned(
                          top: 210,
                          left: 80,
                          child: Text(
                            "Project Centric Solution for Efficacious Operation",
                            style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.w300,
                                color: Colors.white70),
                          ),
                        ),
                        Positioned(
                            top: 270,
                            left: 80,
                            child: Container(
                              width: 700,
                              height: 400,
                              child: Text(
                                "Netcoreinfo provides a one-step automated solution for your trade and industry.We provide the optimum and customized solutions for your organisation.We create customized solutions are provide different products and services according to the size and field of your organisation.We help you maintain competitiveness and achive your business objectives by providing customized solutions that meet your specifices.",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white70),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                        Positioned(
                            right: 900,
                            top: 450,
                            child: Container(
                              height: 100,
                              width: 330,
                              child: Row(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white60),
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.transparent
                                        // Color.fromARGB(255, 223, 219, 219)
                                        ),
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          Company()));
                                        },
                                        child: Text(
                                          "Learn More",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 30),
                                  Container(
                                    width: 150,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white60),
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.transparent
                                        //Color.fromARGB(255, 223, 219, 219)
                                        ),
                                    child: Center(
                                        child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Signin()));
                                      },
                                      child: Text(
                                        "For Enquiry",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 17,
                                            //fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 680,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/z3.jpg"),
                          fit: BoxFit.cover),
                    ),
                    //color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          // color: Colors.white,

                          child: Center(
                            child: Text("OUR SERVICES",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28)),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 250,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(87, 17, 41, 61)),
                              //color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Text(
                                      "DESIGN",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LpgoBranding()));
                                      },
                                      child: Text(
                                        "Logo & Branding",
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    GraphicPrint()));
                                      },
                                      child: Text(
                                        "Graphic/Print Design",
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 250,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(87, 17, 41, 61)),
                              //color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Text(
                                      "DEVELOPMENT",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    webDevelopment()));
                                      },
                                      child: Text(
                                        "Web Development",
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Mobile()));
                                      },
                                      child: Text(
                                        "Mobile App Development",
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SoftwareDevelopment()));
                                      },
                                      child: Text(
                                        "Software Development",
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 250,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(87, 17, 41, 61)),
                              //color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Text(
                                      "OPEN SOURCE",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      EcommerceDevelopment()));
                                        },
                                        child: Text(
                                          "Ecommerce Development",
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    OpenSource()));
                                      },
                                      child: Text(
                                        "Open Source Development",
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    EPRSolution()));
                                      },
                                      child: Text(
                                        "ERP Solution",
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 230,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(87, 17, 41, 61)),
                              //color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Text(
                                      "Digital Marketing",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SearchEngine()));
                                        },
                                        child: Text(
                                          "SEO Services",
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SocialMedia()));
                                      },
                                      child: Text(
                                        "Socail Media Marketing",
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ContentMarketing()));
                                      },
                                      child: Text(
                                        "Content Marketing",
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PpcManagement()));
                                      },
                                      child: Text(
                                        "PPC Management",
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 250,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(87, 17, 41, 61)),
                              //color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Text(
                                      "BUSINESS",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Trainig()));
                                      },
                                      child: Text(
                                        "Training",
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MultivendorEcommerce()));
                                      },
                                      child: Text(
                                        "Multivendor E-Commerce",
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    WebHosting()));
                                      },
                                      child: Text(
                                        "Web Hosting",
                                        style: TextStyle(
                                            color: Colors.white60,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 350,
                          //color: Color.fromARGB(184, 240, 226, 151),

                          //color: Color.fromARGB(255, 221, 176, 28),
                          //color: Color.fromARGB(255, 33, 60, 82),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "OPERATIONS ABROAD",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 5,
                                    color: Colors.black),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 12, right: 150, left: 150),
                                child: Text(
                                  "Netcoreinfo closely works from establishing business setup at Africa and Middle East market.Targeted companies are jointly involved in proving various system and solution to different economics sectors and are considered as one of the fastest growing and leading solution provider company.",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white60),
                                ),
                              ),
                              Container(
                                height: 130,
                                width: 850,
                                color: Colors.white24,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "10",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "_____",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Country",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "342",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "_____",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Running Projects",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "60",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "_____",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Employees",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 880,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Column(children: [
                      Container(
                        height: 630,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/z2.jpg"),
                              fit: BoxFit.cover),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 350,
                              // color: Color.fromARGB(255, 235, 190, 164),

                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 22,
                                  ),
                                  Text(
                                    "WHAT OUR CUSTOMERS SAYS",
                                    style: TextStyle(
                                        fontSize: 27,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 220,
                                    width: 750,
                                    child: PageView.builder(
                                      onPageChanged: (index) {
                                        pageNo = index;
                                        setState(() {});
                                      },
                                      controller: pageController,
                                      itemBuilder: (_, index) {
                                        return AnimatedBuilder(
                                          animation: pageController,
                                          builder: (ctx, child) {
                                            return child!;
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(12),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white),
                                              color: Colors.white70,
                                              //boxShadow: [
                                              //BoxShadow(
                                              // color:
                                              //      Colors.blue.withOpacity(0.5),
                                              //    blurRadius: 6,
                                              //      spreadRadius: 5)
                                              //  ],
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20,
                                                    top: 12,
                                                    bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  right: 480,
                                                ),
                                                child: Text(
                                                  category[index]['title'],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22),
                                                  textAlign: TextAlign.justify,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20, right: 15),
                                                child: Text(
                                                  "We have been working with Netcoreinfo since 2009 on Several IT Projects.When we decided to develop an iPhone app to our clients use we turned again to Netcore.We are already complete three with Netcore and delighted with services.",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12,
                                                    left: 400,
                                                    right: 0,
                                                    bottom: 5),
                                                child: Text(
                                                  category[index]['name'],
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ]),
                                          ),
                                        );
                                      },
                                      itemCount: 5,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: List.generate(
                                          5,
                                          (index) => Container(
                                                margin:
                                                    const EdgeInsets.all(8.0),
                                                child: Icon(
                                                  Icons.circle,
                                                  size: 12.0,
                                                  color: pageNo == index
                                                      ? Colors.blue
                                                      : Colors.white,
                                                ),
                                              )).toList())
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 280,

                              //color: Color.fromARGB(255, 20, 59, 90),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                    child: Text(
                                      "OUR  PARTNERS",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 31,
                                          //fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 23,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 35),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: List.generate(
                                            categories.length, (index) {
                                          return Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                                width: 200,
                                                height: 150,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            categories[index]
                                                                ['assets']),
                                                        fit: BoxFit.cover),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //SizedBox(
                      //height: 22,
                      //),

                      SizedBox(
                        height: 22,
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
                                      width: 35,
                                      height: 35,
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
                                          padding:
                                              const EdgeInsets.only(right: 45),
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
                    ]),
                  )
                ]))));
  }
}
