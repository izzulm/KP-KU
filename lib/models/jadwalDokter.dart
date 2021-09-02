import 'package:flutter/material.dart';

class Jadwal {
  final String image,phone, title, description1,description2,description3,description4;
  final int  id;
  final Color color;
  Jadwal({
    this.id,
    this.image,
    this.title,
    this.description1,
    this.description2,
    this.description3,
    this.description4,
    this.color,
    this.phone,
  });
}
List<Jadwal> jadwals = [
  Jadwal(
    id: 1,
    title: "Klinik Surapati",
    description1: "Dr. Wirda ",
    description2: "\nRabu sd Juma'at",
    description3: "Dr. Erna",
    description4: "\nSabtu sd Selasa",
    image: "assets/images/Surapati.jpeg",
    color: Colors.pink[100],
    phone:"https://wa.me/6285155224441",
  ),
  Jadwal(
    id: 2,
    title: "Klinik Rancabolang",
    description1: "Dr. Wirda ",
    description2: "\nSabtu & Senin",
    description3: "Dr. Nabila",
    description4: "\nSelasa sd Jumat dan Minggu",
    image: "assets/images/Rancabolang.jpeg",
    color: Colors.pink[100],
    phone:"https://wa.me/6285155224441",
  ),
];

