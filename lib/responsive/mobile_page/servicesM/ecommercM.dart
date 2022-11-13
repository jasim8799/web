import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netcoreinfoproject/responsive/mobile_home.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/BlogM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/ContactsM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/Hire_DeveloperM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/Portfolio.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/company.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/services.dart';
import 'package:url_launcher/link.dart';

class ecommerce extends StatefulWidget {
  const ecommerce({Key? key}) : super(key: key);

  @override
  State<ecommerce> createState() => _ecommerceState();
}

class _ecommerceState extends State<ecommerce> {
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
                        image: AssetImage("assets/images/eco.jpg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 6,
                              spreadRadius: 5,
                              color: Colors.grey.withOpacity(0.5))
                        ]),
                    child: Column(children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "E-COMMERCE DEVELOPMENT",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 400,
                        height: 130,
                        child: Row(
                          children: [
                            Container(
                              height: 120,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/12.jpg",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 130,
                              width: 220,
                              child: Text(
                                "As one of the top e-commerce development companies,Netcoreinfo Business Services keeps you up-to-date with the latest e-commerce development solutions.Expand your business at your conveniece by providing a great experiance for your customers with our",
                                textAlign: TextAlign.justify,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          "experienced professionals.Make your business break through the market by incorporating the technological advancements essential for your growth.Build fast query sites on open-source platforms through OpenCart and Magento ecommerce development.Majority of buyers prefer to purchase online.As a result,the majority of firm are transitioning to selling their services online.Our best e-commerce services in india company create online stores for a wide range of business and needs.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35, top: 12),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(3)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "PHP Application Development",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(3)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Joomla Development",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(3)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Open Source Customization",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(3)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "WordPress Development",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(3)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "PHP Codeigniter Development",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
                  )),
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
