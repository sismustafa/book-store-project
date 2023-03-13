import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://i.dr.com.tr/cache/500x400-0/originals/0000000113094-1.jpg',
  'https://i.dr.com.tr/cache/500x400-0/originals/0001766108001-1.jpg',
  'https://i.dr.com.tr/cache/600x600-0/originals/0000000550626-1.jpg'
      'https://i.dr.com.tr/cache/500x400-0/originals/0000000690250-1.jpg'
      'https://i.dr.com.tr/cache/500x400-0/originals/0001973279001-1.jpg',
  'https://i.dr.com.tr/cache/600x600-0/originals/0000000550626-1.jpg'
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.fitHeight, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color.fromRGBO(167, 114, 125, 100)),
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(167, 114, 125, 100),
                                Color.fromRGBO(167, 114, 125, 100)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'No. ${imgList.indexOf(item)} book',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
