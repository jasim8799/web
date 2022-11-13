import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netcoreinfoproject/NetworkHandler.dart';
import 'package:netcoreinfoproject/pages/Services/Maputilis.dart';
import 'package:netcoreinfoproject/pages/sigin.dart';
import 'package:netcoreinfoproject/responsive/mobile_home.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/BlogM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/Hire_DeveloperM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/Portfolio.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/services.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/siginup.dart';
import 'package:url_launcher/link.dart';

class contactM extends StatefulWidget {
  const contactM({Key? key}) : super(key: key);

  @override
  State<contactM> createState() => _contactMState();
}

class _contactMState extends State<contactM> {
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
                    Text("NETCOREINFO BUSINESS GROUP",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
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
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => mobile_home()));
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
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => HireM()));
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
                        MaterialPageRoute(builder: (context) => PortfolioM()));
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
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => PortfolioM()));
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
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => blogM()));
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
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 600,
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
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 450,
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
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(
                                      "LOGIN FORM",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
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
                                        // labelText: 'Firstname',
                                        hintText: 'Enter Firstname',
                                        prefixIcon: Icon(Icons.person),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, top: 20),
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
                                        left: 20, right: 20, top: 20),
                                    child: TextFormField(
                                      controller: _passwordController,
                                      decoration: InputDecoration(
                                        // labelText: 'Password',
                                        hintText: 'Enter Password',
                                        // prefixIcon: Icon(Icons.password),
                                        suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                vis = !vis;
                                              });
                                            },
                                            icon: Icon(vis
                                                ? Icons.visibility_off
                                                : Icons.visibility)),
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
                                    height: 30,
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
                                            child:
                                                Center(child: Text('Submit')),
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
                                            child:
                                                Center(child: Text('Cancel')),
                                          ),
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
                                        'Do not have an account?',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          signupM()));
                                        },
                                        child: Text(
                                          'Sigup',
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
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/mm.jpg"),
                        fit: BoxFit.cover)),
                child: Stack(children: [
                  Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        width: 300,
                        height: 150,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Text(
                                "NETCOREINFO BUSINESS SERVICES",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 17),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "C-23,C Block,Sector 2,Noida UttarPradesh 201301",
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
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
                                  InkWell(
                                    onTap: () {
                                      MapUtils.openMap(28.5847, 77.3159);
                                    },
                                    child: Icon(
                                      Icons.directions,
                                      color: Color.fromARGB(255, 27, 83, 129),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
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
                              padding: const EdgeInsets.only(right: 180),
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
                            ),
                          ],
                        ),
                      ))
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
            ],
          ),
        ),
      ),
    );
  }
}
