import 'package:flutter/material.dart';

class Treatment {
  final String image, title, description, benefit;
  final int price, id;
  final Color color;
  Treatment({
    this.id,
    this.price,
    this.image,
    this.title,
    this.description,
    this.color,
    this.benefit
  });
}
List<Treatment> treatments = [
  Treatment(
    id: 1,
    title: "Facial",
    price: 150,
    description: "berfungsi untuk membuat kulit wajah lebih bersih dan lebih lembab selain itu membantu mengangkat komedo secara maksimal serta membantu merelaksasikan wajah, juga membantu melancarkan sirkulasi peredaran darah di wajah.",
    image: "assets/images/tr_F.JPG",
    color: Colors.pink[100],
    benefit: 'Membantu Mengeluarkan Komedo, Membuang Sel-Sel Kulit Mati, Menghilangkan Jerawat, Membunuh Bakteri Jerawat, Membantu Menenangkan Kulit Wajah, Membantu Wajah Lebih Cerah dan Flawless'
  ),
  Treatment(
    id: 2,
    title: "Microdemabrasi",
    price: 175,
    description: "treatment yang bertujuan untuk menormalkan lagi wajah Anda dari jerawat, tentu saja penghilangan jerawat dan mengembalikan kulit wajah bekas jerawat biasanya banyak lubang menjadi untuh secara normal.",
    image: "assets/images/micro.JPG",
    color: Colors.pink[100],
    benefit: ' Mengecilkan Pori-Pori Besar \n Menghilangkan Bekas Jerawat \n Menghilangkan Kerutan Halus Wajah \n Melembutkan Kulit \n Menghilangkan Wajah Kusam \n'
  ),
  Treatment(
    id: 3,
    title: "Chemical Peeling",
    price: 400,
    description: "Merupakan tindakan pengolesan bahan kimia iritan untuk membantu mempercepat proses pengelupasan kulit secara metaboli.",
    image: "assets/images/tr_CP_Lands.JPG",
    color: Colors.pink[100],
    benefit: ' Menjadikan Kulit Wajah Menjadi Cerah \n Mempercepat Proses Pengeringan Jerawat \n Membantu Mencerahkan Kulit Wajah \n Membantu Mempercepat Proses Regenerasi Kulit'
  ),
  Treatment(
    id: 4,
    title: "Mesotheraphy",
    price: 250,
    description: "Merupakan pengaplikasian serum yang menggunakan alat pada lapisan kulit yang disebut dermis",
    image:"assets/images/tr_MT.JPG",
   color: Colors.pink[100],
   benefit: ' Meso Acne untuk mencerahkan dan mengeringkan acne \n Meso Brightening untuk mencerahkan dan meremajakan wajah \n Meso Lifting untuk mencerahkan dan meniruskan wajah /n Meso Eyebag untuk mengurangi kantung mata, mata panda, dan kerutan halus di sekitar mata.'
  ),
  Treatment(
    id: 5,
    title: "Radio Frequency",
    price: 180,
    description: "Treatment yang mampu merangsang pembentukkan kolagen dibawah kulit yang dapat membuat wajah terasa lebih kencang, selain itu treatment ini dapat membakar lemak dan menghasilkan kulit yang kenyal dan lebih cerah.",
    image: "assets/images/radioF.JPG",
    color: Colors.pink[100],
    benefit: ' Mampu Mengurangi Kerutan di Wajah \n Mampu Meniruskan Pipi Chubby \n Mampu Mengencangkan Kulit Wajah \n Membantu Merangsang Kolagen Secara Alami \n Membantu Memperbaiki Kontur Wajah'
  ),
  Treatment(
    id: 6,
    title: "Insta Glow Treatment",
    price: 500,
    description: "Treatment perawatan yang membantu membuat kulit wajah lebih cerah serta merata dan memberikan hasil kulit wajah yang glowing dan lebih bersinar, perawatan ini bisa menghilangkan noda hitam pada wajah akibat sinar matahari.",
    image: "assets/images/Igt.JPG",
    color: Colors.pink[100],
    benefit: ' Membuat Kulit Wajah Menjadi Lebih Cerah dan Glowing \n Membuat Kulit Wajah Lebih Lembut dan Sehat \n Membantu Menghilangkan Jerawat Kecil Atau Beruntusan \n Membantu Memudarkan Bekas Jerawat dan Flek Hitam \n Membantu Mengecilkan Pori-Pori'
  ),
  Treatment(
    id: 7,
    title: "Platelet Rich Plasma",
    price: 500,
    description: "Treatment ini merupakan perawatan yang dapat memberikan efek peremajaan pada kulit seperti meningkatkan tekstur dan warna kulit",
    image: "assets/images/tr_PRP.JPG",
    color: Colors.pink[100],
    benefit: ' Melembabkan dan Mencerahkan Kulit Wajah \n Menghaluskan dan Mengencangkan Kulit Wajah \n Mengurangi Garis Halus dan Keriput Pada Wajah \n Merangsang Pertumbuhan dan Mempertebal Rambut \n Menyamarkan Garis Halus dan Keriput Pada Leher dan Tangan'
  ),
  Treatment(
    id: 8,
    title: "Intense Pulsed Light",
    price: 180,
    description: "Metode peremajaan tubuh dan kulit yang bertujuan untuk memperlambat proses penuaan khususnya melalui pendekatan internal.",
    image: "assets/images/tr_IPL.JPG",
    color: Colors.pink[100],
    benefit: ' Memperbaiki Tekstur Kulit Sehingga Lebih Halus dan Mengurangi Bopeng Bekas Jerawat \n Mengurangi Tingkat Sensitifitas Kulit \n Mengurangi Jerawat Meradang \n Memperlambat Pertumbuhan Rambut \n Mengurangi Tampilan Pembuluh Darah Yang Melebar'
  ),
  Treatment(
    id: 9,
    title: "Laser Erbium",
    price: 100,
    description: "Merupakan treatment yang bertujuan untuk peremajaan kulit khususnya untuk mengatasi kerutan halus karena penuaan treatment ini juga dapat merangsang pertumbuhan kolagen baru pada kulit dan penyembuhan dengan waktu yang relatif cepat.",
    image: "assets/images/tr_LE.JPG",
    color: Colors.pink[100],
    benefit: ' Memperbaiki Peradangan dan Mengembalikan Infundibulum Yang Rusak Oleh Energi Panas \n Menghasilkan Kolagen dan Meningkatkan Elastisitas Dengan Sinar Laser Yang Menembus ke Dalam Kulit'
  ),
  Treatment(
    id: 10,
    title: "Laser Carbon Blackdoll",
    price: 100,
    description: "Treatment untuk mencerahkan, mengurangi kerutan halus, mengecilkan pori, mencegah komedo dan jerawat. Kontrol minyak berlebih juga menyamarkan flek dan noda jerawat, menggunakan laser NDYAG dengan panjang gelombang 1064.",
    image: "assets/images/lcb.JPG",
    color: Colors.pink[100],
    benefit: ' Mencerahkan Kulit dan Membuat Kulit Menjad Glowing \n Meremajakan Kulit (rejuvenating) \n Mengecilkan Pori-Pori \n Menyamarkan Noda Hitam, Bekas Jerawat, dan Flek \n Membuat Kulit Menjadi Lebih Halus \n Menghilangkan Komedo \n Menghaluskan Tekstur dan Kerutan di Kulit'
  ),
   Treatment(
    id: 11,
    title: "Treadlift Non Needle PDO",
    price: 1750,
    description: "Treatment tanam benang tanpa jarum, treatment ini juga menggunakan benang yang mirip dengan benang yang dipakai pada treatment Thread Lift konvensional. Namun, untuk mengencangkan kulit wajah, benang cukup dioleskan saja di kulit wajah.",
    image: "assets/images/tnn.JPG",
    color: Colors.pink[100],
    benefit: ' Mengatasi Area Mata Berkerut \n Mampu Menghilangkan Kerutan Garis Senyum \n Mampu Mengencangkan Pipi Kendur \n Menghilangkan Kerutan di Dahi'
  ),
];