import 'package:flutter/material.dart';
import 'package:nadhifa_project/models/jadwalDokter.dart';

class ItemJd extends StatelessWidget {
  final Jadwal jadwal;
  final Function press;
  const ItemJd({Key key, this.jadwal, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(0),
              // height: 20,
              // width: 29,
              decoration: BoxDecoration(
                color: jadwal.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                jadwal.image,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              jadwal.title,
              style: TextStyle(
                  color: Colors.pink[200],
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
