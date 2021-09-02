import 'package:flutter/material.dart';
import 'package:nadhifa_project/components/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 3.5),
      height: size.height * 0.4,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 30 + kDefaultPadding),
            height: size.height * 0.4 - 10,
            decoration: BoxDecoration(
                color: Colors.pink[50],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Row(children: <Widget>[
              Image(
                image: AssetImage('assets/Nadhifa.png'),
                fit: BoxFit.fitWidth,
                height: 110,
              ),
            ]),
          ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //   child: Container(
          //     alignment: Alignment.center,
          //     margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          //     padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          //     height: 54,
          //     decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.circular(20),
          //         boxShadow: [
          //           BoxShadow(
          //               offset: Offset(0, 10),
          //               blurRadius: 50,
          //               color: kPrimaryColor.withOpacity(0.23)),
          //         ]),
          //     child: Row(
          //       children: <Widget>[
          //         Expanded(
          //           child: TextField(
          //             decoration: InputDecoration(
          //               hintText: "",
          //               hintStyle:
          //                   TextStyle(color: kPrimaryColor.withOpacity(0.5)),
          //               enabledBorder: InputBorder.none,
          //               focusedBorder: InputBorder.none,
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
