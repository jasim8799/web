import 'package:flutter/material.dart';
import 'package:netcoreinfoproject/myhomepage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'HomePage',
      routes: {
        'HomePage': (context) => const myHomePage(),
      },
      //home: HomePage(),
    );
  }
}
