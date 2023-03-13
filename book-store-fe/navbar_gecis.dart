import 'package:flutter/material.dart';
import '../bottomNavigator/bottomNavigator.dart';
import '../pages/books.dart';
import '../routes/navbar_gecis.dart';
import 'package:widget_pdevi/pages/detay.dart';

import 'package:widget_pdevi/pages/home_page.dart';
import 'package:widget_pdevi/pages/profile.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pageindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Detay Sayfa',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: pageindex == 0
            ? HomePage()
            : pageindex == 1
                ? Book()
                : ProfilePage(),
        bottomNavigationBar: CustomNavBar(
            onTap: (value) {
              pageindex = value;
              setState(() {});
            },
            pageindex: pageindex),
      ),
    );
  }
}
