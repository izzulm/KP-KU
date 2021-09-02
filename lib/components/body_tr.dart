import 'package:flutter/material.dart';
import 'package:nadhifa_project/components/treatment_info.dart';
import 'package:nadhifa_project/contstants.dart';
import 'package:nadhifa_project/models/Treatment.dart';

import 'item_tr.dart';

class BodyTreatment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: new Text(
          "Treatment",
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
              itemCount: treatments.length,
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPaddin + 25),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemTr(
                treatment: treatments[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TreatmentInfo(
                              treatment: treatments[index],
                            ))),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
