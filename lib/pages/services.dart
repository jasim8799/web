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
import 'package:netcoreinfoproject/pages/hire_developers.dart';
import 'package:netcoreinfoproject/pages/home.dart';
import 'package:netcoreinfoproject/pages/mobile.dart';
import 'package:netcoreinfoproject/pages/portfolio.dart';
import 'package:url_launcher/link.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
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
              height: 723,
              color: Colors.white,
              child: Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/w2.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 303,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: Text(
                        "OUR SERVICES",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 235,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 230,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 17, 41, 61)),
                              //color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Text(
                                      "DESIGN",
                                      style: TextStyle(
                                          color: Colors.white,
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
                                                    LpgoBranding()));
                                      },
                                      child: Text(
                                        "Logo & Branding",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
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
                                                    GraphicPrint()));
                                      },
                                      child: Text(
                                        "Graphic/Print Design",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400),
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
                                  color: Color.fromARGB(255, 17, 41, 61)),
                              //color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Text(
                                      "DEVELOPMENT",
                                      style: TextStyle(
                                          color: Colors.white,
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
                                            color: Colors.white,
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
                                            color: Colors.white,
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
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400),
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
                                  color: Color.fromARGB(255, 17, 41, 61)),
                              //color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Text(
                                      "OPEN SOURCE",
                                      style: TextStyle(
                                          color: Colors.white,
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
                                              color: Colors.white,
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
                                            color: Colors.white,
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
                                            color: Colors.white,
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
                                  color: Color.fromARGB(255, 17, 41, 61)),
                              //color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Text(
                                      "Digital Marketing",
                                      style: TextStyle(
                                          color: Colors.white,
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
                                              color: Colors.white,
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
                                            color: Colors.white,
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
                                            color: Colors.white,
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
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 235,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 17, 41, 61)),
                              //color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Text(
                                      "BUSINESS",
                                      style: TextStyle(
                                          color: Colors.white,
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
                                              color: Colors.white,
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
                                                    MultivendorEcommerce()));
                                      },
                                      child: Text(
                                        "Multivendor E-Commerce",
                                        style: TextStyle(
                                            color: Colors.white,
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
                                            color: Colors.white,
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
                      ),
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
}
