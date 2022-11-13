import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netcoreinfoproject/constant.dart';
import 'package:netcoreinfoproject/responsive/mobile_home.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/BlogM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/ContactsM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/Hire_DeveloperM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/Portfolio.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/company.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/services.dart';
import 'package:read_more_text/read_more_text.dart';
import 'package:url_launcher/link.dart';

class companyMmore extends StatefulWidget {
  const companyMmore({super.key});

  @override
  State<companyMmore> createState() => _companyMmoreState();
}

class _companyMmoreState extends State<companyMmore> {
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
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8),
                child: Container(
                  width: 38,
                  height: 28,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    //fit: BoxFit.cover
                  )),
                ),
              ),
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
                        height: 13,
                      ),
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
                      style: TextStyle(fontSize: 17, color: Colors.white),
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
                      Icons.developer_board,
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
                      Icons.portable_wifi_off_outlined,
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
                      Icons.volcano,
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
                child: Column(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1700,
                color: Colors.white,
                child: Column(children: [
                  Container(
                    height: 1100,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 6,
                                      blurRadius: 5,
                                      color: Colors.grey.withOpacity(0.5))
                                ]),
                            width: 400,
                            height: 450,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 15, bottom: 15, left: 15),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 14,
                                    ),
                                    Text(
                                      "ABOUT US",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "Netcoreinfo launched in 2009; is a specialized Software and Web Development Company based in New Delhi and Noida that offers complete customized IT solution to help and boost your business in creating optimum exposure inthe web and IT word with the vision of brand development and success in its relative fields.",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.justify,
                                    ),
                                    Text(
                                      "Netcoreinfo,is one of the most reputable and trust worthly IT services Provider company having expertise on multiple domains",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.justify,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 200, top: 10),
                                      child: Text(
                                        "WHY US?",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Every business has a unique culture and approach to managing processes and projects.The customized solution from Netcoreinfo can take into account even the most minute details of your company's operations,resulting in higher performance and user satisfaction.",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Container(
                                          width: 160,
                                          height: 100,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Color.fromARGB(
                                                  255, 219, 214, 214)),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Text(
                                                "SYSTEM ANALYSIS AND DESIGN",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          width: 160,
                                          height: 100,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Color.fromARGB(
                                                  255, 219, 212, 212)),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Text(
                                                "SOURCE CODE REPOSITORY AND ADMINISTRATION",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
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
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Container(
                                          width: 160,
                                          height: 100,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Color.fromARGB(
                                                  255, 221, 214, 214)),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Text(
                                                "DATABASE MANAGEMENT",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          width: 160,
                                          height: 100,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Color.fromARGB(
                                                  255, 224, 217, 217)),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Text(
                                                "WEB DEVELOPMENT AND DESIGN",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                              width: 400,
                              height: 300,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 35, bottom: 0, left: 15, right: 0),
                                    child: Text(
                                      "We Lead from the Front",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                        top: 20,
                                        bottom: 5),
                                    child: Text(
                                      "Netcoreinfo launched in 2009; is a specialized Software and Web Development Company based in New Delhi and Noida that offers complete customized IT solution to help and boost your business in creating optimum exposure inthe web and IT word with the vision of brand development and success in its relative fields.",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                          wordSpacing: 3),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15, bottom: 10),
                                    child: Text(
                                      "Netcoreinfo,is one of the most reputable and trust worthly IT services Provider company having expertise on multiple domains",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                          wordSpacing: 3),
                                      textAlign: TextAlign.justify,
                                    ),
                                  )
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
                    height: 550,
                    child: Column(
                      children: [
                        Text(
                          "OUR MISSION & VISION",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                width: 400,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color.fromARGB(255, 26, 52, 73)),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Center(
                                    child: Text(
                                      "OUR MISSION Company defining to contribute to forward-looking transformation of a society through software development, Over 10 years to work,we have developed a range of solutions and gained sample experiance in the service we offers: Custom Software development,E-commerce Solution Development,Web Development, Legacy Application Reconstruction, Project Recovery,Consulting , and Quality Assurance",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          //letterSpacing: 2,
                                          // wordSpacing: 5,
                                          fontWeight: FontWeight.w300),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                width: 400,
                                height: 210,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color.fromARGB(255, 19, 41, 59)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "OUR VISION is to achieve 100% customer satisfaction by delivering quality product and services at an affordable cost. Our forward vision is to become an entity and stive in technology based corporate solution,capable of demanding unconditional response from the targeted niche. We also belived that for our scope of improvisation-sky is the limit and we are alwas ready to take our achievement to next level. We are growing and would always like to remain on the growing streak.",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          //letterSpacing: 2,
                                          //wordSpacing: 5,
                                          color: Colors.white),
                                      textAlign: TextAlign.justify,
                                    ),
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
                    height: 500,
                    child: Column(
                      children: [
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
                          width: 800,
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
                                                left: 30, right: 30, top: 30),
                                            child: Text(
                                              "I just want to say thank you for the assistance your staff has given. Working with your team has been a delight; they are efficient and professional. Congratulations on a job well done, and I hope we can grow together.",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
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
                                                fontWeight: FontWeight.bold),
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
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.left,
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
                                            ? Color.fromARGB(255, 31, 79, 119)
                                            : Colors.black,
                                      ),
                                    )).toList())
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 800,
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
                          height: 130,
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
                          height: 150,
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
                          height: 145,
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
                          height: 205,
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
                          height: 162,
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
                                    image: AssetImage("assets/images/logo.png"),
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
                                      padding: const EdgeInsets.only(right: 50),
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
                                        color: Color.fromARGB(255, 21, 77, 122),
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
            ]))));
  }
}
