import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netcoreinfoproject/responsive/mobile_home.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/BlogM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/ContactsM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/Hire_DeveloperM.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/Portfolio.dart';
import 'package:netcoreinfoproject/responsive/mobile_page/services.dart';
import 'package:url_launcher/link.dart';

class signupM extends StatefulWidget {
  const signupM({Key? key}) : super(key: key);

  @override
  State<signupM> createState() => _signupMState();
}

class _signupMState extends State<signupM> {
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
            SizedBox(
              width: 30,
            ),
            Text(
              "NETCOREINFO BUSINESS GROUP",
              style: TextStyle(color: Colors.white),
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
                      padding: const EdgeInsets.all(8.0),
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
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "SIGNUP FORM",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      //fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
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
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
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
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
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
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
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
                                    'Do not have an account?',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  contactM()));
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
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 219, 212, 212),
                    borderRadius: BorderRadius.circular(12)),
                width: 450,
                height: 250,
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 15, bottom: 15, left: 15),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          "ABOUT US",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Netcoreinfo launched in 2009; is a specialized Software and Web Development Company based in New Delhi and Noida that offers complete customized IT solution to help and boost your business in creating optimum exposure inthe web and IT word with the vision of brand development and success in its relative fields.",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w200),
                        ),
                        Text(
                          "Netcoreinfo,is one of the most reputable and trust worthly IT services Provider company having expertise on multiple domains",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: 100,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                color: Color.fromARGB(255, 22, 64, 99)),
                            //color: Color.fromARGB(
                            //  255, 19, 70, 112),
                            child: TextButton(
                                onPressed: () {
                                  print("Welcome to Netcoreinfo");
                                },
                                child: Text(
                                  "Read More",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200,
                                  ),
                                )),
                          ),
                        ),
                      ]),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                width: 200,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromARGB(255, 219, 214, 214)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Text(
                                      "SYSTEM ANALYSIS AND DESIGN",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 200,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromARGB(255, 219, 212, 212)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Text(
                                    "SOURCE CODE REPOSITORY AND ADMINISTRATION",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
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
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                width: 200,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromARGB(255, 221, 214, 214)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Text(
                                      "DATABASE MANAGEMENT",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 200,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color.fromARGB(255, 224, 217, 217)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Text(
                                    "WEB DEVELOPMENT AND DESIGN",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
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
                    height: 184,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 35, bottom: 0, left: 15, right: 0),
                          child: Text(
                            "We Lead from the Front",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
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
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 320,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
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
                            padding: const EdgeInsets.only(top: 10, left: 125),
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
                            padding: const EdgeInsets.only(left: 130),
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
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Row(
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
                                          color:
                                              Color.fromARGB(255, 21, 77, 122),
                                          size: 26,
                                        ));
                                  },
                                ),
                              ],
                            ),
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
                            "Copyright@2004-2021.All Rights Reserved.netcoreinfo.com",
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
