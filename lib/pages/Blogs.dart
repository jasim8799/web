import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:netcoreinfoproject/pages/Login.dart';
import 'package:netcoreinfoproject/pages/company.dart';
import 'package:netcoreinfoproject/pages/hire_developers.dart';
import 'package:netcoreinfoproject/pages/home.dart';
import 'package:netcoreinfoproject/pages/portfolio.dart';
import 'package:netcoreinfoproject/pages/services.dart';
import 'package:url_launcher/link.dart';

class Blogs extends StatefulWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
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
              height: 400,
              color: Colors.white,
              child: Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/w10.jpeg"),
                          fit: BoxFit.cover)),
                ),
              ]),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 3200,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "SOCIAL MEDIA PLATFORM",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 120, right: 65, top: 1),
                    child: Row(
                      children: [
                        Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/12.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 915,
                          height: 170,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Social media platform is an organization that provides services for public users to disseminate speech, expression, information, or other content (typically content that includes messages, videos, photographs, and/or sound files) to other users or the public. “Social- Media Platform” basically, it includes both the organization and any of its officers, agents, employees, contractors, or any other person employed by or acting on behalf of the Social-Media Platform as well subcontractors or entities used to conduct fact-checking or any other activities relating to Content Modulation. “Social-Media Platforms” include, but are not limited to, YouTube, Facebook, Twitter, LinkedIn, and Instagram, Google, Facebook Messenger, Snapchat among others.",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Here are some Instagram features:",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Instagram Reels, QR Code, Stories",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Disappearing DMs",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "IGTV",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Pin Comments",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Boomerangs",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Follow Hashtag",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Mute Post and Stories",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Archive post and Stories",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 450,
                        height: 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Advantages of Instagram:",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "More Businesses & Consumers Are Joining Every Day",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Easy to target your Audience",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Engage with Customer where they used to spend more time",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Build up user Generation Content",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Reveals in Dept Insight about your Audience",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 300,
                        height: 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Here is main feature of Facebook:",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Organise your list",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Group",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Messages",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Pages",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Royalty free music",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Legacy Contact",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Advantages of Facebook",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Useful for Education",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Stay connected",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Helps find people with similar interests and preferences",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Useful for marketing",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Beneficial for business",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Direct connection with the audience/target group",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Helps to build your brand ",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Here are new YouTube features:",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Improve Comments",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Subscriber Notification",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "New types Cards",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Easier Access to the Subs Feed",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "A faster more useful creator studio app",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Video management on the go",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "360-Degree Videos",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Better live Streams",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "New Creator Community",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 450,
                        height: 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Advantages of YouTube:",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Give the Audience more Content",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Extra source of traffic",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Closer personal Connection",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Another source of Revenue",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Modernizing",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Creative Outlet",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 350,
                        height: 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Here are features of LinkedIn:",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Hide your connection",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Export your connection",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Manage your skills & Endorsements",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Create LinkedIn Showcase Pages",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Save your Searches",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Advantages of LinkedIn:",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Stay connected and get employs",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Give prominences to your brands",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Promote your skill set",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Gain exposure to prospective employers/ recruiters",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Follow companies or industries",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Vast and large job listening",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "publicity",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Here are some features of Twitter:",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Quote a tweet",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Twitter list",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Tagging account in Tweet",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Pinning a tweet",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Tweeting website card",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 190),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Advantages of Twitter:",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Reach wide audience",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Deliver customer service",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Brand identity",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Feedback ",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Cost",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, right: 670),
                        child: Text(
                          "SOCIAL MEDIA OPTIMISATION (SMO)",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 13, left: 120, right: 65),
                        child: Row(
                          children: [
                            Container(
                                width: 200,
                                height: 160,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/images/8.png"),
                                        fit: BoxFit.cover))),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 900,
                              height: 170,
                              child: Text(
                                "Social media optimization (SMO) is for the use of social media networks to manage as well as grow an organization’s message and online presence. As a digital marketing strategy, social media optimization (SMO) can be used to increase the awareness of new products and services, connect with customers, and mitigate potential damaging news.",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 250, top: 15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Brand building",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Low cost",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Search engine ranking",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Instant turnaround",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Targeting specific audience",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Creating inbounds links",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Making your content travel",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, right: 670),
                        child: Text(
                          "SEARCH ENGINE OPTIMIZATION (SEO)",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 13, left: 120, right: 65),
                        child: Row(
                          children: [
                            Container(
                                width: 200,
                                height: 160,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/images/8.png"),
                                        fit: BoxFit.cover))),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 900,
                              height: 170,
                              child: Text(
                                "SEO means Search Engine Optimization and it is the process to use for optimizing a website's technical configuration, content relevance and link popularity so its pages can be easily findable as well as more relevant, and popular towards user search queries, and therefore, search engines rank them better.",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 250, top: 15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Brings in more customers through organic search",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Creates a trustworthy web experience for customers",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Encourages you to focus on user experience",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Improves brand awareness",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "It helps keep you informed",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "It can be done on a budget",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "It is trackable",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "It benefits other marketing initiatives",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 670),
                        child: Text(
                          "SOCIAL MEDIA MARKETING (SMM)",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 13, left: 120, right: 65),
                        child: Row(
                          children: [
                            Container(
                                width: 200,
                                height: 160,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/images/8.png"),
                                        fit: BoxFit.cover))),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 900,
                              height: 170,
                              child: Text(
                                "Social media marketing (SMM) is also known as digital marketing and e-marketing and it is used for social media—the platforms on which users build social networks and share information—it is very much important to build a company's brand for this there is need of increase in sales, and drive website traffic. In addition, it is very much important to provide companies with a way to engage with existing customers and reach new ones, social media marketing (SMM) has purpose-built data analytics that allow marketers to track the success of their efforts and identify even more ways to engage.",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 250, top: 15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Increased Brand Awareness",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "More Inbound Traffic",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Improved Search Engine Rankings",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Higher Conversion Rates",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Better Customer Satisfaction",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Improved Brand Loyalty",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "More Brand Authority",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 800,
                                  height: 24,
                                  child: Text(
                                    "Cost-Effective",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 610),
                        child: Text(
                          "DIGITAL MARKETING AND ITS COMPONENT",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 140, left: 170, top: 10),
                        child: Text(
                          "Digital Marketing is online marketing which involves promoting a brand, organization and its product and services to audiences by using the Internet. It can majorly benefit the promotion of any business",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 695, top: 10),
                        child: Text(
                          "COMPONENT OF DIGITAL MARKETING",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 650, top: 10),
                        child: Text(
                          "There Are 12 Main Component Of Digital Marketing",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 140, left: 170, top: 10),
                        child: Text(
                          "SEARCH ENGINE OPTIMIZATION:-SEO is also known as “organic search” because It refers to Unpaid techniques that help websites rank higher in search engine results.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 140, left: 170, top: 10),
                        child: Text(
                          "SEARCH ENGINE MARKETING:- SEM is also known as “inorganic search” which involves paid promotion of websites by increasing their online audience’s visibility in search engine result pages.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 140, left: 170, top: 10),
                        child: Text(
                          "SOCIAL MEDIA MARKETING:-SMM is a platform for paid promotion of products and services in social media app example Twitter, Instagram, Facebook and YouTube Etc. These platform helps to build or increases brand, sales and organization.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 140, left: 170, top: 10),
                        child: Text(
                          "CONTENT MARKETING:-Content Marketing is a marketing strategy used to attract and engage the audience by creating as well as sharing relevant podcasts, and videos to promote brand awareness among customers and keep your business on top.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 140, left: 170, top: 10),
                        child: Text(
                          "EMAIL MARKETING:- Email marketing is the use of email to promote products or services while developing relationships with potential customers or clients. It is essentially direct mail done electronically instead of through the postal service",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 140, left: 170, top: 10),
                        child: Text(
                          "AFFILIATE MARKETING:- Affiliate Marketing is where you promote another company’s product or service in return for a commission on the sales you generate.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 140, left: 170, top: 10),
                        child: Text(
                          "INFLUENCER MARKETING:- Influencer Marketing is more than just likes or shares on social networks; it’s like a single customer recommending your product to thousands, or even millions, of friends.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 140, left: 170, top: 10),
                        child: Text(
                          "E-Commerce Marketing:- E-commerce marketing is the practice of guiding online shoppers to an e-commerce website and persuading them to buy the products or services online. Amazon, Myntra and another shopping app is part of E-Commerce Marketing",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
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
