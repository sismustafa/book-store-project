// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int pageindex;
  final Function(int) onTap;
  const CustomNavBar({
    Key? key,
    required this.pageindex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // bottomnavigatoru extract widget yap
      onTap: (value) {
        onTap(value);
      },
      currentIndex: pageindex, //add ikonu mavi oldu index 1, home index 0
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Color.fromRGBO(167, 114, 125, 100),
          ),
          label: "Home ",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.book,
            color: Color.fromRGBO(167, 114, 125, 100),
          ),
          label: "Books",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Color.fromRGBO(167, 114, 125, 100),
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
