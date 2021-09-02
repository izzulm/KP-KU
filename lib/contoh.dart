// contoh page berita :
// import 'package:flutter/material.dart';
// import 'package:nadhifa_project/models/jadwalDokter.dart';

// class JadwalInfo extends StatelessWidget {
//   final Jadwal jadwal;

//   const JadwalInfo({Key key, this.jadwal}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     Widget textSection = Container(
//       padding: const EdgeInsets.all(32),
//       child: Text(
//         'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
//         'Alps. Situated 1,578 meters above sea level, it is one of the '
//         'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
//         'half-hour walk through pastures and pine forest, leads you to the '
//         'lake, which warms to 20 degrees Celsius in the summer. Activities '
//         'enjoyed here include rowing, and riding the summer toboggan run.',
//         softWrap: true,
//       ),
//     );

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             jadwal.title,
//             style: new TextStyle(fontSize: 22.0, color: Colors.pinkAccent[700]),
//           ),
//           backgroundColor: Colors.pink[100],
//         ),
//         body: ListView(
//           children: [
//             Image.asset(
//               jadwal.image,
//               width: 600,
//               height: 240,
//               fit: BoxFit.cover,
//             ),
//             textSection,
//           ],
//         ),
//       ),
//     );
//   }
// }


// ini adalah navbar lama :
// import 'package:flutter/material.dart';
// import 'package:nadhifa_project/components/Body_Jdk.dart';
// import 'package:nadhifa_project/components/home_screen.dart';
// import 'package:nadhifa_project/components/body_tr.dart';
// import 'package:nadhifa_project/info.dart';

// class Navigasi extends StatefulWidget {
//   @override
//   _NavigasiState createState() => _NavigasiState();
// }

// class _NavigasiState extends State<Navigasi> {
//   int currentTab = 0;
//   final List<Widget> screens = [
//     HomeScreen(),
//   ];

//   Widget currentScreen = HomeScreen();
//   final PageStorageBucket bucket = PageStorageBucket();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageStorage(
//         child: currentScreen,
//         bucket: bucket,
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         shape: CircularNotchedRectangle(),
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             IconButton(
//               icon: Icon(Icons.home),
//               tooltip: 'Home',
//               color: currentTab == 0 ? Colors.pink[200] : Colors.grey[400],
//               onPressed: () {
//                 setState(() {
//                   setState(() {
//                     currentScreen = HomeScreen();
//                     currentTab = 0;
//                   });
//                 });
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.spa),
//               tooltip: 'Treatment',
//               color: currentTab == 1 ? Colors.pink[200] : Colors.grey[400],
//               onPressed: () {
//                 setState(() {
//                   currentScreen = BodyTreatment();
//                   currentTab = 1;
//                 });
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.calendar_today),
//               tooltip: 'Jadwal Dokter',
//               color: currentTab == 2 ? Colors.pink[200] : Colors.grey[400],
//               onPressed: () {
//                 setState(() {
//                   currentScreen = BodyJadwal();
//                   currentTab = 2;
//                 });
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.info),
//               tooltip: 'Info',
//               color: currentTab == 3 ? Colors.pink[200] : Colors.grey[400],
//               onPressed: () {
//                 setState(() {
//                   currentScreen = InfoScreen();
//                   currentTab = 3;
//                 });
//               },
//             ),
//           ],
//         ),
//         color: Colors.white,
//       ),
//     );
//   }
// }
