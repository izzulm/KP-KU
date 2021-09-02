import 'package:flutter/material.dart';
import 'package:nadhifa_project/models/Treatment.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:nadhifa_project/utils/icon_svg_icons.dart';

class TreatmentInfo extends StatelessWidget {
  final Treatment treatment;

  const TreatmentInfo({Key key, this.treatment}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget textSection = Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  text: treatment.title + ' ',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.pink[100]),
                  children: <TextSpan>[
                    TextSpan(
                        text: treatment.description + '\n',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal))
                  ])),
          Text(
            'Manfaat ' + treatment.title,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.pink[100]),
          ),
          Text(treatment.benefit + '\n',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w300)),
          Text(
            'Harga :',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.pink[100]),
          ),
          /*Text('Mulai Dari ' + treatment.price.toString(),
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w300)),*/
          RichText(
              text: TextSpan(
                  text: 'Mulai dari ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                      color: Colors.black54),
                  children: <TextSpan>[
                TextSpan(
                    text: 'Rp.' + treatment.price.toString() + '.000',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900)),
                TextSpan(
                    text: ' Saja!',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                        color: Colors.black54))
              ])),
        ],
      ),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            treatment.title,
            style: new TextStyle(
                fontSize: 22.0,
                color: Colors.white,
                fontWeight: FontWeight.w300),
          ),
          backgroundColor: Colors.pink[100],
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: ListView(
          children: [
            Image.asset(
              treatment.image,
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            textSection,
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 2,
          child: Icon(IconSvg.whatsapp, color: Colors.pink[300], size:35,),
          onPressed: () {
            launch("https://wa.me/6285155224441");
          },
        ),
      ),
    );
  }
}
