import 'package:flutter/material.dart';
import 'package:nadhifa_project/models/jadwalDokter.dart';
import 'package:nadhifa_project/utils/icon_svg_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class JadwalInfo extends StatelessWidget {
  final Jadwal jadwal;

  const JadwalInfo({Key key, this.jadwal}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          jadwal.title,
          style: new TextStyle(fontSize: 22.0, color: Colors.white),
        ),
        backgroundColor: Colors.pink[100],
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: new Container(
        child: ListView(
          children: <Widget>[
            Image.asset(
              jadwal.image,
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.pink[200],
                    child: new Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 50.0,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 100.0,
                      color: Colors.pink[100],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(jadwal.description1,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            jadwal.description2,
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.pink[200],
                    child: new Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 50.0,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 100.0,
                      color: Colors.pink[100],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(jadwal.description3,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            jadwal.description4,
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 2,
        child: Icon(
          IconSvg.whatsapp,
          color: Colors.pink[300],
          size: 35,
        ),
        onPressed: () {
          launch(jadwal.phone);
        },
      ),
    );
  }
}
