import 'dart:async';
import 'package:netcoreinfoproject/constant.dart';
import 'package:read_more_text/read_more_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:netcoreinfoproject/pages/Blogs.dart';
import 'package:netcoreinfoproject/pages/Login.dart';
import 'package:netcoreinfoproject/pages/comanymore.dart';
import 'package:netcoreinfoproject/pages/hire_developers.dart';
import 'package:netcoreinfoproject/pages/home.dart';
import 'package:netcoreinfoproject/pages/portfolio.dart';
import 'package:netcoreinfoproject/pages/services.dart';
import 'package:url_launcher/link.dart';

class Company extends StatefulWidget {
  const Company({Key? key}) : super(key: key);

  @override
  State<Company> createState() => _CompanyState();
}

class _CompanyState extends State<Company> {
  late final PageController pageController;
  late ScrollController _controller;
  int pageNo = 0;
  double pixels = 0.0;
  late final Timer carasouelTimer;
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
                    height: 1100,
                    color: Colors.white,
                    child: Column(children: [
                      Container(
                        height: 720,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 1000,
                              height: 380,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 10,
                                        blurRadius: 12)
                                  ]),

                              //width: 1000,
                              //height: 380,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, right: 15, bottom: 5, left: 15),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "ABOUT US",
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      //SizedBox(
                                      // height: 5,
                                      //),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            right: 60,
                                            left: 60,
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 100,
                                                height: 80,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/a.png"),
                                                        fit: BoxFit.cover)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                child: Container(
                                                  width: 700,
                                                  height: 100,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 30),
                                                    child: Text(
                                                      "The company was founded at the beginning of the millennium as a branch by a team of enthusiastic IT specialists who wanted to break free from the routine and create a company that would act as an economical and technological lift in the market.",
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                      textAlign:
                                                          TextAlign.justify,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 60, left: 60),
                                          child: Text(
                                            "We are a company where professionals from both technical and functional fields work together to provide approprite business solution.It realizes the importance of operational knowledge and its impact on developing business solutions.",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            right: 60,
                                            left: 60,
                                          ),
                                          child: Text(
                                            "The key to the company's success is maintaining a close working relationship with the clients by ensuring the best possible solutions to their needs and helping them maximize the benefits.",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Container(
                                          width: 130,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color.fromARGB(
                                                  255, 22, 64, 99)),
                                          //color: Color.fromARGB(
                                          //  255, 19, 70, 112),
                                          child: TextButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            comanymore()));
                                              },
                                              child: Text(
                                                "Read More",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 220,
                                          height: 105,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Color.fromARGB(
                                                  255, 219, 214, 214)),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(20),
                                              child: Text(
                                                "SYSTEM ANALYSIS AND DESIGN",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 220,
                                          height: 105,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Color.fromARGB(
                                                  255, 219, 212, 212)),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(20),
                                              child: Text(
                                                "SOURCE CODE REPOSITORY AND ADMINISTRATION",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 220,
                                          height: 105,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Color.fromARGB(
                                                  255, 221, 214, 214)),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(20),
                                              child: Text(
                                                "DATABASE MANAGEMENT",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 220,
                                          height: 105,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Color.fromARGB(
                                                  255, 224, 217, 217)),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(20),
                                              child: Text(
                                                "WEB DEVELOPMENT AND DESIGN",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 400,
                                  height: 300,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 15,
                                            bottom: 1,
                                            //left: 15,
                                            right: 0),
                                        child: Text(
                                          "We Lead from the Front",
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Netcoreinfo launched in 2009; is a specialized Software and Web Development Company based in New Delhi and Noida that offers complete customized IT solution to help and boost your business in creating optimum exposure inthe web and IT word with the vision of brand development and success in its relative fields.",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300,
                                            wordSpacing: 3),
                                      ),
                                      Text(
                                        "Netcoreinfo,is one of the most reputable and trust worthly IT services Provider company having expertise on multiple domains",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 350,
                        child: Column(
                          children: [
                            // SizedBox(
                            // height: 44,
                            //),
                            Text(
                              "OUR MISSION & VISION",
                              style: TextStyle(
                                  fontSize: 31, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 550,
                                  height: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      // color: Color.fromARGB(255, 26, 52, 73)
                                      color: Colors.black),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Center(
                                      child: Text(
                                        "The objective of the company is to use software development to aid in society's progressive evolution.We have been in business for ten years and during that time have created a variety of solutin and gained expertise in the services we offer:Custom Software Development,E-commerce Solutions Develoment,Legacy Application Reconstruction,Project Recovery,Consulting,Web Development and Quality Assurance.",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                            letterSpacing: 2,
                                            wordSpacing: 5,
                                            fontWeight: FontWeight.w500),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 550,
                                  height: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      //color: Color.fromARGB(255, 19, 41, 59)
                                      color: Colors.black),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Text(
                                        "We strive for 100% client satisfaction by providing high-quality products and services.We want to be force in technology-based corporate solutions,capable of eliciting an assertive response from the targeted market.We also feel that the sky is the limit for our scope of improvisation,and we are constantly ready to push our success to the next level.",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 2,
                                            wordSpacing: 5,
                                            color: Colors.white),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 450,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 22,
                            ),
                            Text(
                              "Client Testimonials",
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 300,
                              width: 1200,
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
                                        // color: Colors.white,
                                        //boxShadow: [
                                        //BoxShadow(
                                        // color:
                                        //      Colors.blue.withOpacity(0.5),
                                        //    blurRadius: 6,
                                        //      spreadRadius: 5)
                                        //  ],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: 300,
                                            width: 300,
                                            //color: Colors.white,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      spreadRadius: 5,
                                                      blurRadius: 6)
                                                ]),
                                            // color: Color.fromARGB(255, 17, 57, 90),
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30,
                                                    right: 30,
                                                    top: 30),
                                                child: Text(
                                                  "I just want to say thank you for the assistance your staff has given. Working with your team has been a delight; they are efficient and professional. Congratulations on a job well done, and I hope we can grow together.",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                  textAlign: TextAlign.justify,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                categoryT[index]['name'],
                                                // 'Riya Singhania',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.left,
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                categoryT[index]['title'],
                                                //'CEO',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.left,
                                              ),
                                            ]),
                                          ),
                                          Container(
                                            width: 300,
                                            height: 300,
                                            //color: Color.fromARGB(255, 15, 59, 95),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      blurRadius: 6,
                                                      spreadRadius: 5)
                                                ]),
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30,
                                                    right: 30,
                                                    top: 30),
                                                child: Text(
                                                  "We have been working with Netcore since 2009 on several IT projects. When we decided to develop an iPhone app for our clients' use, we turned again to Netcore. We have already completed three projects with Netcore and are delighted with their services.",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                  textAlign: TextAlign.justify,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                //category[index]['name'],
                                                'Rajeev Shukla',
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                //category[index]['title'],
                                                'Business Man',
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ]),
                                          ),
                                          Container(
                                            width: 300,
                                            height: 300,
                                            //color: Color.fromARGB(255, 20, 58, 90),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      blurRadius: 6,
                                                      spreadRadius: 5)
                                                ]),
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30,
                                                    right: 30,
                                                    top: 30),
                                                child: Text(
                                                  "We thank Netcore for the wonderful job in helping us develop our program. Everyone was professional, excellent and hard working. Thanks to them, we were able to achieve our goal on time, and we look forward to continue working with them in the future.",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                  textAlign: TextAlign.justify,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                //category[index]['name'],
                                                'Akhilesh',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                //category[index]['title'],
                                                'App Developer',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ]),
                                          ),
                                        ],
                                      ),
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
                                                ? Color.fromARGB(
                                                    255, 31, 79, 119)
                                                : Colors.black,
                                          ),
                                        )).toList())
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 550,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 6,
                                        spreadRadius: 5,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              width: 900,
                              height: 85,
                              padding: EdgeInsets.all(5),
                              //color: Colors.green,
                              child: ReadMoreText(
                                '1. Why do we require ERP?\n'
                                'ERP solutions help you streamline your business activities by integrating all the processes into one connected entity',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                                numLines: 1,
                                readMoreText: 'Answer',
                                readLessText: 'Thank You',
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 6,
                                        spreadRadius: 5,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              width: 900,
                              height: 105,
                              padding: EdgeInsets.all(5),
                              //color: Colors.green,
                              child: ReadMoreText(
                                '2. How does the design process work?\n'
                                'We  process and build credibility, and even gives you the chance to allow people to ask about changes or alterations that they may have.',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                                numLines: 1,
                                readMoreText: 'Answer',
                                readLessText: 'Thank You',
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 6,
                                        spreadRadius: 5,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              width: 900,
                              height: 85,
                              padding: EdgeInsets.all(5),
                              //color: Colors.green,
                              child: ReadMoreText(
                                '3. Can you convert the existing website into WordPress?\n'
                                'Yes! We can convert the website into WordPress. Yes! We can convert the website into WordPress.Yes! We can we are',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                                numLines: 1,
                                readMoreText: 'Answer',
                                readLessText: 'Thank You',
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 6,
                                        spreadRadius: 5,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              width: 900,
                              height: 105,
                              padding: EdgeInsets.all(5),
                              //color: Colors.green,
                              child: ReadMoreText(
                                '4. What does the company do to maintain the app post-launch? \n'
                                'The project doesn’t get finished until after the launch of the app in the market. We still have to work on it to release updates, fix bugs, improve functionality, and add new features. Thus, the app would work properly without any issues',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                                numLines: 1,
                                readMoreText: 'Answer',
                                readLessText: 'Thank You',
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 6,
                                        spreadRadius: 5,
                                        color: Colors.grey.withOpacity(0.5))
                                  ]),
                              width: 900,
                              height: 105,
                              padding: EdgeInsets.all(5),
                              //color: Colors.green,
                              child: ReadMoreText(
                                '5. How will the website convert website visitors into leads and generate more sales?\n'
                                'We strategize and develop a plan for your website. This inevitably includes online marketing tactics. SEO and marketing are heavily intertwined.',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                                numLines: 1,
                                readMoreText: 'Answer',
                                readLessText: 'Thank You',
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
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
                ]))));
  }
}
