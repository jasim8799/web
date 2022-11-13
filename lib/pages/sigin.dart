import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:netcoreinfoproject/pages/Blogs.dart';
import 'package:netcoreinfoproject/pages/Login.dart';
import 'package:netcoreinfoproject/pages/Services/ERP_Solution.dart';
import 'package:netcoreinfoproject/pages/Services/Ecommerce_development.dart';
import 'package:netcoreinfoproject/pages/Services/Graphics&print.dart';
import 'package:netcoreinfoproject/pages/Services/Multivendor_Ecommerce.dart';
import 'package:netcoreinfoproject/pages/Services/Training.dart';
import 'package:netcoreinfoproject/pages/Services/Web_hosting.dart';
import 'package:netcoreinfoproject/pages/Services/logo&branding.dart';
import 'package:netcoreinfoproject/pages/Services/open_source.dart';
import 'package:netcoreinfoproject/pages/Services/software_development.dart';
import 'package:netcoreinfoproject/pages/Services/web_development.dart';
import 'package:netcoreinfoproject/pages/company.dart';
import 'package:netcoreinfoproject/pages/hire_developers.dart';
import 'package:netcoreinfoproject/pages/home.dart';
import 'package:netcoreinfoproject/pages/mobile.dart';
import 'package:netcoreinfoproject/pages/portfolio.dart';
import 'package:netcoreinfoproject/pages/services.dart';
import 'package:url_launcher/link.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
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
            width: MediaQuery.of(context).size.width,
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
                                    image: AssetImage("assets/images/logo.png"),
                                    fit: BoxFit.cover
                                    //fit: BoxFit.fitHeight
                                    ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 14),
                            child: Text(
                              "NETCOREINFO BUSINESS GROUP",
                              style: TextStyle(
                                color: Color.fromARGB(255, 18, 56, 87),
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                // fontStyle: FontStyle.italic
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
                                padding: EdgeInsets.only(top: 13, left: 15),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
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
                                            color: Color.fromARGB(
                                                255, 18, 78, 128),
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 13, left: 15),
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
                                padding: EdgeInsets.only(top: 13, left: 10),
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
                                            color:
                                                Color.fromARGB(255, 18, 62, 99),
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700)),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 13, left: 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
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
                                              color: Color.fromARGB(
                                                  255, 19, 67, 105),
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(top: 13),
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
                                padding: EdgeInsets.only(top: 13),
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
                  height: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/w50.jpeg"),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Container(
                      // width: MediaQuery.of(context).size.width,
                      // height: 200,
                      // color: Colors.red,
                      //),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8, left: 700, bottom: 8),
                        child: Container(
                          height: 400,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Form(
                                child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    "SIGNUP FORM",
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
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
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
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
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
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
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
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
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
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 230,
                                  height: 40,
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.grey),
                                        child: Center(child: Text('Submit')),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.grey),
                                        child: Center(child: Text('Cancel')),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'I have already an account?',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        LoginPage()));
                                      },
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 700,
                  color: Colors.white,
                  child: Column(children: [
                    //Container(
                    // width: MediaQuery.of(context).size.width,
                    // height: 400,
                    //decoration: BoxDecoration(
                    //  image: DecorationImage(
                    //        image: AssetImage("assets/images/1.jpeg"),
                    //        fit: BoxFit.cover)),
                    // ),
                    Container(
                      height: 700,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 226, 219, 219),
                                borderRadius: BorderRadius.circular(12)),
                            width: 1000,
                            height: 300,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 15, bottom: 15, left: 15),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "ABOUT US",
                                      style: TextStyle(
                                          //color: Colors.white,
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "Netcoreinfo launched in 2009; is a specialized Software and Web Development Company based in New Delhi and Noida that offers complete customized IT solution to help and boost your business in creating optimum exposure inthe web and IT word with the vision of brand development and success in its relative fields.",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Netcoreinfo,is one of the most reputable and trust worthly IT services Provider company having expertise on multiple domains",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Container(
                                        width: 150,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(
                                                255, 19, 63, 99)),
                                        //color: Color.fromARGB(255, 11, 36, 56),
                                        child: TextButton(
                                            onPressed: () {
                                              print("Welcome to Netcoreinfo");
                                            },
                                            child: Text(
                                              "Read More",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )),
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: 18,
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
                                        width: 270,
                                        height: 135,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Color.fromARGB(
                                                255, 214, 207, 207)),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(20),
                                            child: Text(
                                              "SYSTEM ANALYSIS AND DESIGN",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        width: 270,
                                        height: 135,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Color.fromARGB(
                                                255, 219, 214, 214)),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(20),
                                            child: Text(
                                              "SOURCE CODE REPOSITORY AND ADMINISTRATION",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
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
                                      Container(
                                        width: 270,
                                        height: 135,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Color.fromARGB(
                                                255, 212, 207, 207)),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(20),
                                            child: Text(
                                              "DATABASE MANAGEMENT",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        width: 270,
                                        height: 135,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Color.fromARGB(
                                                255, 223, 216, 216)),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(20),
                                            child: Text(
                                              "WEB DEVELOPMENT AND DESIGN",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
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
                                          top: 15,
                                          bottom: 12,
                                          left: 15,
                                          right: 0),
                                      child: Text(
                                        "We Lead from the Front",
                                        style: TextStyle(
                                            fontSize: 34,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Netcoreinfo launched in 2009; is a specialized Software and Web Development Company based in New Delhi and Noida that offers complete customized IT solution to help and boost your business in creating optimum exposure inthe web and IT word with the vision of brand development and success in its relative fields.",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300,
                                            wordSpacing: 3),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Netcoreinfo,is one of the most reputable and trust worthly IT services Provider company having expertise on multiple domains",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300,
                                            wordSpacing: 3),
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
                                          color:
                                              Color.fromARGB(255, 146, 81, 77),
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
                                          color:
                                              Color.fromARGB(255, 23, 73, 114),
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
              ]),
            )));
  }
}
