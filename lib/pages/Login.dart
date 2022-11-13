import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:netcoreinfoproject/NetworkHandler.dart';
import 'package:netcoreinfoproject/pages/Blogs.dart';
import 'package:netcoreinfoproject/pages/Services/Maputilis.dart';
import 'package:netcoreinfoproject/pages/company.dart';
import 'package:netcoreinfoproject/pages/hire_developers.dart';
import 'package:netcoreinfoproject/pages/home.dart';
import 'package:netcoreinfoproject/pages/portfolio.dart';
import 'package:netcoreinfoproject/pages/services.dart';
import 'package:netcoreinfoproject/pages/sigin.dart';
import 'package:url_launcher/link.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool vis = true;
  final _globalkey = GlobalKey<FormState>();
  NetworkHandler networkHandler = NetworkHandler();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
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
                        const EdgeInsets.only(top: 8, bottom: 8, left: 700),
                    child: Container(
                      height: 460,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                            key: _globalkey,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Text(
                                    "LOGIN FORM",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 27,
                                        //fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: TextFormField(
                                    controller: _usernameController,
                                    validator: (value) {
                                      if (value!.isEmpty)
                                        return "Username cannot be empty";
                                      //username unique is not
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      //labelText: 'Username',
                                      hintText: 'Enter Username',
                                      prefixIcon: Icon(Icons.person),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 17, right: 20, left: 20),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      //labelText: 'Email',
                                      hintText: 'Enter Email',
                                      prefixIcon: Icon(Icons.email),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty)
                                        return "Email cannot be empty";
                                      if (!value.contains("@"))
                                        return "Email is invalid";
                                      //username unique is not
                                      return null;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, left: 20, right: 20),
                                  child: TextFormField(
                                    controller: _passwordController,
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              vis = !vis;
                                            });
                                          },
                                          icon: Icon(vis
                                              ? Icons.visibility_off
                                              : Icons.visibility)),
                                      //labelText: 'Password',
                                      hintText: 'Enter Password',
                                      prefixIcon: Icon(Icons.password),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty)
                                        return "Password cannot be empty";
                                      if (value.length < 8)
                                        return "Password length must have >=8";
                                      //username unique is not
                                      return null;
                                    },
                                    obscureText: vis,
                                  ),
                                ),
                                SizedBox(
                                  height: 45,
                                ),
                                Container(
                                  width: 230,
                                  height: 40,
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          if (_globalkey.currentState!
                                              .validate()) {
                                            //we will send data to rest server
                                            Map<String, String> data = {
                                              "Username":
                                                  _usernameController.text,
                                              "email": _emailController.text,
                                              "password":
                                                  _passwordController.text,
                                            };
                                            print(data);
                                            //networkHandler.post();
                                          }
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.grey),
                                          child: Center(child: Text('Submit')),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.grey),
                                          child: Center(child: Text('Cancel')),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Do not have an account?',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        Signin()));
                                      },
                                      child: Text(
                                        'Signup',
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
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              //width: 950,
              height: 450,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/screen.jpg"),
                      fit: BoxFit.cover)),
              child: Stack(children: [
                Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      width: 350,
                      height: 130,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              "NETCOREINFO BUSINESS SERVICES",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          //Icon(Icons.directio
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "C-23,C Block,Sector 2,Noida ",
                                    textAlign: TextAlign.justify,
                                  ),
                                  Text("UttarPradesh 201301")
                                ],
                              ),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      MapUtils.openMap(28.5847, 77.3159);
                                    },
                                    child: Icon(
                                      Icons.directions,
                                      color: Color.fromARGB(255, 27, 83, 129),
                                    ),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        MapUtils.openMap(
                                            47.628293260721, -122.34263420105);
                                      },
                                      child: Text(
                                        "Directions",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 27, 83, 129)),
                                      )),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("2.6"),
                                SizedBox(
                                  width: 3,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: InkWell(
                              onTap: () {
                                MapUtils.openMap(
                                    47.628293260721, -122.34263420105);
                              },
                              child: Text(
                                "View larger map",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 31, 89, 136)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ))
              ]),
            ),
            SizedBox(
              height: 15,
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
          ]),
        ),
      ),
    );
  }
}
