import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

import '../widgets/imageSlider.dart';
import '../widgets/searcbar.dart';

import 'detay.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            'Ana Sayfa',
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(167, 114, 125, 100),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                color: Color.fromRGBO(237, 219, 199, 100),
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SearchInput(),
                    SizedBox(
                      width: width * 0.7,
                      height: height * 0.4,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio: 2.0,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false,
                          initialPage: 2,
                          autoPlay: true,
                        ),
                        items: imageSliders,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "Latest Book",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decorationStyle: TextDecorationStyle.solid,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 125, 87, 87)),
                        ),
                        SizedBox(
                          height: 10,
                          child: Row(),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => DetayPage(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(250, 248, 241, 2)),
                                child: Container(
                                  width: width * 0.3,
                                  height: height * 0.25,
                                  margin: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'https://img.kitapyurdu.com/v1/getImage/fn:1005721/wh:true/wi:220'),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(250, 248, 241, 2)),
                                child: Container(
                                  width: width * 0.3,
                                  height: height * 0.25,
                                  margin: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'https://img.kitapyurdu.com/v1/getImage/fn:1005721/wh:true/wi:220'),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(250, 248, 241, 2)),
                                child: Container(
                                  width: width * 0.3,
                                  height: height * 0.25,
                                  margin: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'https://img.kitapyurdu.com/v1/getImage/fn:1005721/wh:true/wi:220'),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(250, 248, 241, 2)),
                                child: Container(
                                  width: width * 0.3,
                                  height: height * 0.25,
                                  margin: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'https://img.kitapyurdu.com/v1/getImage/fn:1005721/wh:true/wi:220'),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
