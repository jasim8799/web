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

class trainingM extends StatefulWidget {
  const trainingM({Key? key}) : super(key: key);

  @override
  State<trainingM> createState() => _trainingMState();
}

class _trainingMState extends State<trainingM> {
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
                        image: AssetImage("assets/images/w17.jpeg"),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 6, spreadRadius: 5, color: Colors.grey)
                      ]),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "INDUSTRIAL TRAINING SERVICES",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "We provide efficient learning by working on customized projects, career coach guidance, and project reviews. We help you develop projects, enhance your technical abilities, and refine the skills necessary to succeed professionally throughout our internship programme.NITD provides an excellent training resource that is flexibly applicable, such as in the classroom, at the plant, or in the office. It provides all relevant knowledge in the appropriate context, comprehensive inspections, and the latest performance evaluation techniques. The NITD courses, when combined with Mind-Sight, provide a plethora of options for meeting industrial training demands",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Text(
                                "Customized Training Program for each user",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "On-site and Off-site training resolution",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Text(
                                "The course structure is specially designed depending on the client’s necessities",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Highly developed Training Modules",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Text(
                                "A broad variety of fundamental and specialty industrial training courses",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Text(
                                "Used by top-tier manufacturing, industrial, and technical relations",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Text(
                                "Delivery on Time with High excellence training",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Comprehensive appraisal",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Best Corporate Training Institute in Noida",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "NITD is a reputable and excellent institution serving for ten years. It is a world-class hi-tech institute having industry expert professionals and certified researchers on staff. Our institute is the student's first choice for highly interactive and result-oriented learning in Noida. We provide hands-on practical lab training, work on live projects, and a variety of customised training for small and medium businesses, as well as large corporations in Delhi, NCR, and throughout India.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Netcore Noida Corporate training programs and their features & benefits",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Our mission is to prepare students for employment by providing them with professional skills and practical knowledge in high-demand industries. We want to provide challenging, practical experiences that prepare students for meaningful careers.We envision a society where anyone can use technology to make a substantial contribution and everyone has access to the tools, opportunities, and resources required for learning. We have helped huge numbers of people all around the nation realize their full potential.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Text(
                                "Hands-on practical pieces of training Program",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Modules-wise lectures Demo classes",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Text(
                                "Lab classes, Lab Test Project assignments.",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Customize Training Programs.",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Offsite and Onsite Training Model",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Back-end, front-end Training Model",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Text(
                                "Flexible Training - Courses delivered at your chosen convenient time.",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Text(
                                "Able to handle corporate training requirements in a short time.",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Text(
                                "Lowest price and big savings to your budget",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "All of our trainers are certified by vendors.",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
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
}
