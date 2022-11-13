import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:netcoreinfoproject/pages/Services/ERP_Solution.dart';
import 'package:netcoreinfoproject/pages/company.dart';
import 'package:netcoreinfoproject/pages/constant.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/BlogM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/ContactsM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/Hire_DeveloperM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/Portfolio.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/company.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/seoM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/services.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/servicesM/contentM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/servicesM/ecommercM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/servicesM/erpM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/servicesM/graphicM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/servicesM/logoM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/servicesM/mobileM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/servicesM/multidorM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/servicesM/openM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/servicesM/ppcM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/servicesM/socialMediaM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/servicesM/softwareM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/servicesM/training.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/servicesM/web.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/servicesM/web_hosting.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/siginup.dart';
import 'package:url_launcher/link.dart';

class mobile_home extends StatefulWidget {
  const mobile_home({Key? key}) : super(key: key);

  @override
  State<mobile_home> createState() => _mobile_homeState();
}

class _mobile_homeState extends State<mobile_home> {
  List<String> imageList = [
    "assets/images/accenture.png",
    "assets/images/jindal.png",
    "assets/images/birla.jpg",
    "assets/images/logo5.png",
    "assets/images/logo2.png",
  ];
  static const colorizedColors = [
    Colors.blue,
    Colors.white,
    Colors.red,
    Colors.green
  ];
  static const colorizedTextstyle = TextStyle(fontSize: 17);
  late ScrollController _controller;
  late final PageController pageController;
  double pixels = 0.0;
  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.95);
    carasouelTimer = getTimer();
    // TODO: implement initState
    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {
      pixels = _controller.position.pixels;
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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                ),
                child: Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    //fit: BoxFit.cover
                  )),
                ),
              ),
              // SizedBox(
              //  width: 3,
              //  ),
              //Text(
              //  "NETCOREINFO BUSINESS GROUP",
              //  style: TextStyle(color: Colors.white, fontSize: 16),
              //),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: Container(
            color: Colors.black,
            child: ListView(
              children: [
                DrawerHeader(
                    child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/logo.png"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("NETCOREINFO BUSINESS GROUP",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          )),
                    ],
                  ),
                )),
                Center(
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => mobile_home()));
                    },
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(
                      Icons.design_services,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Services",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ServiceM()));
                    },
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(
                      Icons.developer_mode,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Hire Developer",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HireM()));
                    },
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.computer,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Company",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => CompanyM()));
                    },
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.podcast,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Portfolio",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PortfolioM()));
                    },
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(
                      Icons.laptop,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Blog",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => blogM()));
                    },
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Contact Us",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => contactM()));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              controller: _controller,
              child: Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 450,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/h5.jpg"),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 20, top: 60, left: 20),
                        child: Text(
                          "Project Centric Solution for Efficacious Operation",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white70),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 30, top: 30),
                        child: Text(
                          "Netcoreinfo provides a one-step automated solution for your trade and industry.We provide the optimum and customized solutions for your organisation.We create customized solutions are provide different products and services according to the size and field of your organisation.We help you maintain competitiveness and achive your business objectives by providing customized solutions that meet your specifices.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.white70),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 150,
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => CompanyM()));
                                },
                                child: Text(
                                  "Learn More",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => contactM()));
                                },
                                child: Text(
                                  "For Enquiry",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: 390,
                  height: 850,
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
                      Center(
                        child: Text("OUR SERVICES",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w500,
                                fontSize: 20)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 165,
                              height: 130,
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
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => logoM()));
                                      },
                                      child: Text(
                                        "Logo & Branding",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w200),
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
                                                    graphic()));
                                      },
                                      child: Text(
                                        "Graphic/Print Design",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w200),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 165,
                              height: 130,
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
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => webM()));
                                      },
                                      child: Text(
                                        "Web Development",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w200),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    mobileM()));
                                      },
                                      child: Text(
                                        "Mobile App Development",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w200),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    softwareM()));
                                      },
                                      child: Text(
                                        "Software Development",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w200),
                                      ),
                                    ),
                                  ),
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
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 165,
                              height: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color.fromARGB(87, 17, 41, 61)),
                              //color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Text(
                                      "OPEN SOURCE",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ecommerce()));
                                        },
                                        child: Text(
                                          "Ecommerce Development",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w200),
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => openM()));
                                      },
                                      child: Text(
                                        "Open Source Development",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w200),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => erpM()));
                                      },
                                      child: Text(
                                        "ERP Solution",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w200),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 165,
                              height: 130,
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
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => seoM()));
                                      },
                                      child: Text(
                                        "SEO Services",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w200),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SocialMedialM()));
                                      },
                                      child: Text(
                                        "Socail Media Marketing",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w200),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    contentM()));
                                      },
                                      child: Text(
                                        "Content Marketing",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w200),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => ppcM()));
                                      },
                                      child: Text(
                                        "PPC Management",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w200),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 165,
                          height: 130,
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
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => trainingM()));
                                  },
                                  child: Text(
                                    "Training",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w200),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => multidorM()));
                                  },
                                  child: Text(
                                    "Multivendor E-Commerce",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w200),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                webhostingM()));
                                  },
                                  child: Text(
                                    "Web Hosting",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w200),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 350,
                        //color: Color.fromARGB(186, 236, 214, 92),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "OPERATIONS  ABROAD",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, bottom: 10),
                              child: Text(
                                "Netcoreinfo closely works from establishing business setup at Africa and Middle East market.Targeted companies are jointly involved in proving various system and solution to different economics sectors and are considered as one of the fastest growing and leading solution provider company.",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            SizedBox(
                              height: 15,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "10",
                                        style: TextStyle(
                                            fontSize: 20,
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
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "342",
                                        style: TextStyle(
                                            fontSize: 20,
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
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "60",
                                        style: TextStyle(
                                            fontSize: 20,
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
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300),
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
                  height: 550,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.white,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/z2.jpg"),
                        fit: BoxFit.cover),
                  ),
                  child: Column(children: [
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
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 240,
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
                                      border: Border.all(color: Colors.white),
                                      color: Colors.white70,
                                      //boxShadow: [
                                      //BoxShadow(
                                      // color:
                                      //      Colors.blue.withOpacity(0.5),
                                      //    blurRadius: 6,
                                      //      spreadRadius: 5)
                                      //  ],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 12, bottom: 5),
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
                                            // right: 480,
                                            ),
                                        child: Text(
                                          category[index]['title'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 19),
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
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 6,
                                            // left: 400,
                                            right: 0,
                                            bottom: 5),
                                        child: Text(
                                          category[index]['name'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                  5,
                                  (index) => Container(
                                        margin: const EdgeInsets.all(8.0),
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
                      height: 200,
                      width: MediaQuery.of(context).size.width,
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
                                  color: Colors.white,
                                  fontSize: 20,
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
                                    height: 115,
                                    width: 250,
                                    //color: Color.fromARGB(255, 19, 60, 94),
                                    child: CarouselSlider(
                                        items: imageList
                                            .map((e) => ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  child: Stack(
                                                    fit: StackFit.expand,
                                                    children: [
                                                      Image.asset(
                                                        e,
                                                        height: 50,
                                                        width: MediaQuery.of(
                                                                context)
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
                                            height: 200)),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Container(
                                    width: 27,
                                    height: 27,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/logo.png"),
                                      // fit: BoxFit.cover
                                    )),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    "NETCOREINFO BUSINESS GROUP",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 80),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    size: 30,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
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
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.mail,
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 50),
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
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "JOIN WITH US",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
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
                                          //color: Colors.blue,
                                          //size: 2,
                                        ));
                                  },
                                ),
                                Link(
                                  uri: Uri.parse(
                                      "https://instagram.com/software_development_company_?igshid=Y2ZmNzg0YzQ="),
                                  target: LinkTarget.blank,
                                  builder: (context, followLink) {
                                    return TextButton(
                                      onPressed: followLink,
                                      child: Icon(
                                        FontAwesomeIcons.instagram,
                                        color: Color.fromARGB(255, 141, 77, 73),
                                      ),
                                    );
                                  },
                                ),
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
                                          size: 26,
                                        ));
                                  },
                                ),
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
                                          size: 26,
                                        ));
                                  },
                                ),
                                Link(
                                  uri: Uri.parse(
                                      "https://www.linkedin.com/company/netcoreinfo-business-group/"),
                                  target: LinkTarget.blank,
                                  builder: (context, followLink) {
                                    return TextButton(
                                        onPressed: followLink,
                                        child: Icon(
                                          FontAwesomeIcons.linkedin,
                                          color:
                                              Color.fromARGB(255, 21, 77, 122),
                                          size: 26,
                                        ));
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              "Become a Partner| FAQ|",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Copyright@2004-2021.All Rights Reserved.",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "netcoreinfo.com",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 13,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ]),
            )));
  }
}
