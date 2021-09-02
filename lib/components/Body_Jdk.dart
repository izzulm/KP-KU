import 'package:flutter/material.dart';
import 'package:nadhifa_project/components/jadwal_info.dart';
import 'package:nadhifa_project/contstants.dart';
import 'package:nadhifa_project/models/jadwalDokter.dart';

import 'item_jd.dart';

class BodyJadwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: new Text(
          "Jadwal Dokter",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: jadwals.length,
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPaddin + 25),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemJd(
                jadwal: jadwals[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => JadwalInfo(
                              jadwal: jadwals[index],
                            ))),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
