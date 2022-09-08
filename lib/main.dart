import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  late ScrollController _controller;
  double pixels = 0.0;
  @override
  void initState() {
    // TODO: implement initState
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
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 15, 51, 80)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/9.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "SOFTWARE COMPANY",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 27),
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text("Home",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text("Services",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text("Hire Developers",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text("Company",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: Text("Portfolio",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500))),
                            Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text("Blog",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text("Contact Us",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500)),
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
                  height: 600,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 21, 68, 107),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 90,
                          left: 80,
                          child: Column(
                            children: [
                              Text(
                                "NETCORE IS A POINT TO GET",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Color.fromARGB(255, 211, 204, 204),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "SUCCESS AND ACHIVE YOUR DREAM",
                                style: TextStyle(
                                    fontSize: 32,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 80,
                              ),
                              Text(
                                "We are working on Mobile Apllication, Desktop Application",
                                style: TextStyle(
                                    fontSize: 21,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white54),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "and many more Software Application.",
                                style: TextStyle(
                                    fontSize: 21,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white54),
                              ),
                              SizedBox(
                                height: 37,
                              ),
                              Text(
                                "We  are Hiring as a Intern then Training and working on",
                                style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "and then Deploy as Employee our Company",
                                style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
                                    child: Center(
                                      child: Text(
                                        "Learn More",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Container(
                                    width: 130,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color:
                                            Color.fromARGB(255, 165, 157, 157)),
                                    child: Center(
                                        child: Text(
                                      "For Enquiry",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w600),
                                    )),
                                  ),
                                ],
                              )
                            ],
                          )),
                      Positioned(
                          right: 150,
                          top: 60,
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(75),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/19.jpg"),
                                  fit: BoxFit.cover),
                              color: Color.fromARGB(255, 18, 52, 80),
                            ),
                            child: Stack(children: [
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: Container(
                                  width: 150,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 15, 54, 85),
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topLeft: Radius.circular(10))),

                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      "Mobile Application",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          )),
                      Positioned(
                          right: 300,
                          top: 160,
                          child: Container(
                            height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(85),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/21.jpg"),
                                  fit: BoxFit.cover),
                              color: Color.fromARGB(255, 18, 52, 80),
                            ),
                            child: Stack(children: [
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: Container(
                                  width: 150,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 15, 54, 85),
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topLeft: Radius.circular(10))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      "Desktop Application",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          )),
                      Positioned(
                          right: 130,
                          top: 320,
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(65),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/13.jpg"),
                                  fit: BoxFit.cover),
                              color: Color.fromARGB(255, 18, 52, 80),
                            ),
                            child: Stack(children: [
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: Container(
                                  width: 150,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 15, 54, 85),
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topLeft: Radius.circular(10))),

                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      "Intership Training",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          )),
                      Positioned(
                          right: 500,
                          top: 60,
                          child: Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/1.jpeg"),
                                  fit: BoxFit.cover),
                              color: Color.fromARGB(255, 18, 52, 80),
                            ),
                            child: Stack(children: [
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: Container(
                                  width: 150,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 15, 54, 85),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),

                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      "  Job  Opportunity",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          )),
                    ],
                  )
                  )
            ],
          ),
        ),
      ),
    );
  }
}
