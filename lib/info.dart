import 'package:flutter/material.dart';
import 'package:nadhifa_project/faq.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:nadhifa_project/utils/icon_svg_icons.dart';
import 'package:nadhifa_project/utils/info_whatsapp.dart';

class InfoScreen extends StatelessWidget {
  InfoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text(
            "Info Klinik",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: new Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              padding: EdgeInsets.fromLTRB(20, 80, 20, 20),
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  color: Colors.pink[50],
                  shape: RoundedRectangleBorder(
                    side: new BorderSide(color: Colors.pink[100], width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: FlatButton.icon(
                          icon: Icon(IconSvg.web, color: Colors.pink[300]),
                          label: Text(
                            "Buka WebSite",
                            style: TextStyle(
                                fontSize: 25, color: Colors.pink[300]),
                          ),
                          onPressed: () =>
                              launch("https://www.nadhifabeauty.com"),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: new BorderSide(color: Colors.pink[100], width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: FlatButton.icon(
                          icon:
                              Icon(IconSvg.instagram, color: Colors.pink[300]),
                          label: Text(
                            "Buka Instagram",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.pink[300],
                            ),
                          ),
                          onPressed: () => launch(
                              "https://www.instagram.com/nadhifabeautycare/"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Card(
                  color: Colors.pink[50],
                  shape: RoundedRectangleBorder(
                    side: new BorderSide(color: Colors.pink[100], width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: FlatButton.icon(
                          icon: Icon(IconSvg.mail, color: Colors.pink[300]),
                          label: Text("Kirim Email",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.pink[300],
                              )),
                          onPressed: () => launch(
                              "mailto:contact@nadhifabeauty.com.in?subject=Hi&body=Tulis%20disini"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Card(
                  shape: RoundedRectangleBorder(
                    side: new BorderSide(color: Colors.pink[100], width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: FlatButton.icon(
                          icon: Icon(IconSvg.whatsapp, color: Colors.pink[300]),
                          label: Text("Pesan whatsApp",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.pink[300],
                              )),
                          onPressed: () {
                            // pindah ke halaman simple
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InfoWhatsApp()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Card(
                  color: Colors.pink[50],
                  shape: RoundedRectangleBorder(
                    side: new BorderSide(color: Colors.pink[100], width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: FlatButton.icon(
                          icon: Icon(Icons.new_releases, color: Colors.pink[300]),
                          label: Text("FAQ",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.pink[300],
                              )),
                          onPressed: () {
                            // pindah ke halaman simple
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FaqScreen()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
