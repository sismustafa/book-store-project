import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
        Text(
          "PROFİL SAYFASI",
          style: TextStyle(color: Colors.amber, fontSize: 30),
        ),
      ]),
    );
  }
}
