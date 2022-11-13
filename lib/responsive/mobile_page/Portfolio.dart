import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netcoreinfoproject/responsive/mobile_home.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/BlogM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/ContactsM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/Hire_DeveloperM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/company.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/services.dart';
import 'package:url_launcher/link.dart';

class PortfolioM extends StatefulWidget {
  const PortfolioM({Key? key}) : super(key: key);

  @override
  State<PortfolioM> createState() => _PortfolioMState();
}

class _PortfolioMState extends State<PortfolioM> {
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
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/pot1.png"),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1300,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 160,
                            height: 200,
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
                                  padding: const EdgeInsets.all(7.0),
                                  child: Container(
                                    width: 130,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Center(
                                      child: Text(
                                        "Logo and Branding",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 8, bottom: 8),
                                  child: Container(
                                    width: 200,
                                    height: 120,
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
                                      left: 8, right: 8, top: 10),
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
                                                    fontWeight: FontWeight.w500,
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
                                          color:
                                              Color.fromARGB(255, 32, 74, 109),
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
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 160,
                            height: 200,
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
                                    width: 130,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Center(
                                      child: Text(
                                        "Web Development",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 8, bottom: 8),
                                  child: Container(
                                    width: 200,
                                    height: 120,
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
                                      left: 8, right: 8, top: 10),
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
                                                    fontWeight: FontWeight.w500,
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
                                          color:
                                              Color.fromARGB(255, 32, 74, 109),
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
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 160,
                            height: 200,
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
                                    width: 130,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Center(
                                      child: Text(
                                        "Android Development",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 8, bottom: 8),
                                  child: Container(
                                    width: 200,
                                    height: 120,
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
                                      left: 8, right: 8, top: 10),
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
                                                    fontWeight: FontWeight.w500,
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
                                          color:
                                              Color.fromARGB(255, 32, 74, 109),
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
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 160,
                            height: 200,
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
                                    width: 145,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Center(
                                      child: Text(
                                        "Ecommerce Development",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 8, bottom: 8),
                                  child: Container(
                                    width: 200,
                                    height: 120,
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
                                      left: 8, right: 8, top: 10),
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
                                                    fontWeight: FontWeight.w500,
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
                                          color:
                                              Color.fromARGB(255, 32, 74, 109),
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
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 160,
                            height: 200,
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
                                    width: 130,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Center(
                                      child: Text(
                                        "ERP Solution",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 8, bottom: 8),
                                  child: Container(
                                    width: 200,
                                    height: 120,
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
                                      left: 8, right: 8, top: 10),
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
                                                    fontWeight: FontWeight.w500,
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
                                          color:
                                              Color.fromARGB(255, 32, 74, 109),
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
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 160,
                            height: 200,
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
                                    width: 130,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Center(
                                      child: Text(
                                        "Application Hosting",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 8, bottom: 8),
                                  child: Container(
                                    width: 200,
                                    height: 120,
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
                                      left: 8, right: 8, top: 10),
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
                                                    fontWeight: FontWeight.w500,
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
                                          color:
                                              Color.fromARGB(255, 32, 74, 109),
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
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 160,
                            height: 200,
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
                                    width: 130,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Center(
                                      child: Text(
                                        "CRM Development",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 8, bottom: 8),
                                  child: Container(
                                    width: 200,
                                    height: 120,
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
                                      left: 8, right: 8, top: 10),
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
                                                    fontWeight: FontWeight.w500,
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
                                          color:
                                              Color.fromARGB(255, 32, 74, 109),
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
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 160,
                            height: 200,
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
                                    width: 130,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Center(
                                      child: Text(
                                        "Bulk/Sms Mailing",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 8, bottom: 8),
                                  child: Container(
                                    width: 200,
                                    height: 120,
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
                                      left: 8, right: 8, top: 10),
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
                                                    fontWeight: FontWeight.w500,
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
                                          color:
                                              Color.fromARGB(255, 32, 74, 109),
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
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 160,
                            height: 200,
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
                                    width: 130,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Center(
                                      child: Text(
                                        "Online Marketing",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 8, bottom: 8),
                                  child: Container(
                                    width: 200,
                                    height: 120,
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
                                      left: 8, right: 8, top: 10),
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
                                                    fontWeight: FontWeight.w500,
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
                                          color:
                                              Color.fromARGB(255, 32, 74, 109),
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
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 160,
                            height: 200,
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
                                    width: 130,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Center(
                                      child: Text(
                                        "Technical Support",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 8, bottom: 8),
                                  child: Container(
                                    width: 200,
                                    height: 120,
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
                                      left: 8, right: 8, top: 10),
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
                                                    fontWeight: FontWeight.w500,
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
                                          color:
                                              Color.fromARGB(255, 32, 74, 109),
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
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 160,
                            height: 200,
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
                                    width: 130,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            bottomRight: Radius.circular(40))),
                                    child: Center(
                                      child: Text(
                                        "Business Consultant",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 8, bottom: 8),
                                  child: Container(
                                    width: 200,
                                    height: 120,
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
                                      left: 8, right: 8, top: 10),
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
                                                    fontWeight: FontWeight.w500,
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
                                          color:
                                              Color.fromARGB(255, 32, 74, 109),
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
                  ],
                ),
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

  void _showdial1() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(actions: [
            Container(
              height: 300,
              width: 300,
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
                          fontSize: 20,
                          //fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500),
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
                          padding: const EdgeInsets.only(),
                          child: Container(
                            height: 190,
                            width: 250,
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
                                                height: 40,
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
                                    height: 180)),
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
