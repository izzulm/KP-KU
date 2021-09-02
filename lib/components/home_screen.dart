import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'header_with_searchbox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    var _current = 0;
  List imgList = [
    ('https://www.nadhifabeauty.com/wp-content/uploads/2020/11/WhatsApp-Image-2020-11-10-at-11.37.12-1-1024x640.jpeg'),
    ('https://www.nadhifabeauty.com/wp-content/uploads/2020/09/bannernad1.jpg'),
    ('https://www.nadhifabeauty.com/wp-content/uploads/2020/09/nadhifa-web1.jpg'),
    ('https://www.nadhifabeauty.com/wp-content/uploads/2019/09/Nadhifa-1024x640.jpg'),
    ('https://www.nadhifabeauty.com/wp-content/uploads/2019/08/Website-produk.jpg'),
    ('https://www.nadhifabeauty.com/wp-content/uploads/2019/08/Website-masker.jpg')
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CarouselSlider(
                      height: 250.0,
                      initialPage: 0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      reverse: false,
                      enableInfiniteScroll: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 2000),
                      pauseAutoPlayOnTouch: Duration(seconds: 10),
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      items: imgList.map((imgUrl) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              decoration: BoxDecoration(
                                color: Colors.pink[100],
                              ),
                              child: Image.network(
                                imgUrl,
                                fit: BoxFit.fill,
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: map<Widget>(imgList, (index, url) {
                          return Container(
                            width: 10.0,
                            height: 10.0,
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _current == index
                                    ? Colors.pinkAccent[700]
                                    : Colors.pink[100]),
                          );
                        })),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
