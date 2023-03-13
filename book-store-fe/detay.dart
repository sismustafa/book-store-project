import 'package:flutter/material.dart';

class DetayPage extends StatefulWidget {
  const DetayPage({super.key});

  @override
  State<DetayPage> createState() => _DetayPageState();
}

class _DetayPageState extends State<DetayPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'Detay Sayfa',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            title: const Text(
              'Detay Sayfa',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(167, 114, 125, 100)),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Color.fromRGBO(249, 245, 231, 1000),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Container(
                        width: width * 0.5,
                        height: height * 0.3,
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://img.kitapyurdu.com/v1/getImage/fn:1005721/wh:true/wi:220'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.star, color: Colors.amber),
                            Icon(Icons.star, color: Colors.amber),
                            Icon(Icons.star, color: Colors.amber),
                            Icon(Icons.star, color: Colors.amber),
                            Icon(Icons.star, color: Colors.amber),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "MAHALLEDEN \n ARKADAŞLAR",
                              style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    children: const [
                      ListTile(
                        leading: Icon(
                          Icons.arrow_right_rounded,
                          color: Color.fromRGBO(167, 114, 125, 100),
                        ),
                        title: Text(
                          'İsmi',
                          style: TextStyle(fontSize: 18),
                        ),
                        subtitle: Text(
                          'Mahalleden Arkadaşlar.',
                          style: TextStyle(fontSize: 17),
                        ),
                        isThreeLine: false,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.arrow_right_rounded,
                          color: Color.fromRGBO(167, 114, 125, 100),
                        ),
                        title: Text(
                          'Yazarı',
                          style: TextStyle(fontSize: 18),
                        ),
                        subtitle: Text(
                          'Selçuk Aydemir',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.arrow_right_rounded,
                          color: Color.fromRGBO(167, 114, 125, 100),
                        ),
                        title: Text(
                          'Basım Tarihi',
                          style: TextStyle(fontSize: 18),
                        ),
                        subtitle: Text(
                          '05.26.2019',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.arrow_right_rounded,
                          color: Color.fromRGBO(167, 114, 125, 100),
                        ),
                        title: Text(
                          'Fiyatı',
                          style: TextStyle(fontSize: 18),
                        ),
                        subtitle: Text(
                          '100 tl',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.arrow_right_rounded,
                          color: Color.fromRGBO(167, 114, 125, 100),
                        ),
                        title: Text(
                          'Özet',
                          style: TextStyle(fontSize: 18),
                        ),
                        subtitle: Text(
                          'Music by Julie Gable. Lyrics by Sidney SteinMusic by Julie Gable. Lyrics by Sidney SteinMusic by Julie Gable. Lyrics by Sidney SteinMusic by Julie Gable. Lyrics by Sidney Stein.',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
