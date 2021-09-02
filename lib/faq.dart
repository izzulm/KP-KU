import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FaqScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Frequency Asked Question',
          style: new TextStyle(fontSize: 22.0, color: Colors.white),
        ),
        backgroundColor: Colors.pink[100],
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: <Widget>[
            //FAQ1
            Text(
              'Jasa pengiriman pesananan menggunakan apa ya? ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink[200]),
            ),
            Container(height: 5),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text:
                      'Pengiriman pesanan kami kirimkan dari Kota Bandung menggunakan jasa ',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'J&T – EZ ',
                        style: TextStyle(color: Colors.pink)),
                    TextSpan(
                        text:
                            '. Untuk ongkos kirimnya, dapat di check langsung yaa di website resmi! Oh iya, kita hanya melayani pesanan di hari senin s/d sabtu yaa. Dengan maksimal upload bukti transfer jam 17.00 WIB.')
                  ],
                )),
            Container(height: 15),

            //FAQ2
            Text(
              'Apakah Nadhifa dapat menerima pengembalian pesanan? ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink[200]),
            ),
            Container(height: 5),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text: 'Tentu kami menerima pengembalian pesanan hanya ',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'jika ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'kami mengirimkan produk pesanan yang '),
                    TextSpan(
                        text: 'salah. ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            'Kami akan mengirimkan produk yang dipesan dan mengembalikan shipping fee terhadap produk yang dikembalikan pada kami seluruhnya. '),
                    TextSpan(
                        text: 
                        'Dengan syarat, produk dikembalikan dalam kondisi tersegel & belum dicoba/dipakai sama sekali. Pengajuan pengembalian maksimal diajukan H+1 minggu dari tanggal pengiriman dilakukan' )
                  ],
                )),
            Container(height: 15),

            //FAQ3
            Text(
              'Apakah produk-produk Nadhifa aman digunakan setiap hari? ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink[200]),
            ),
            Container(height: 5),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text:
                      'Dapat dipastikan seluruh produk kami aman karena kami menggunakan bahan-bahan yang aman bagi kulit wajah, ',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Jangan khawatir! :)',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                )),
            Container(height: 15),

            //FAQ4
            Text(
              'Jika stock habis, berapa lama untuk restock produk kembali? ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink[200]),
            ),
            Container(height: 5),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text: 'Di Nadhifa, produk kami ',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'selalu diproduksi ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            'sehingga stock kami selalu ada. Seneng banget kan jadi kakak bisa beli skin care Nadhifa kapan pun tanpa takut kehabisan, ditunggu order-nya! ♥')
                  ],
                )),
            Container(height: 15),

            //FAQ5
            Text(
              'Apakah produk Nadhifa halal? ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink[200]),
            ),
            Container(height: 5),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text: 'Inshaa Allah, ',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            'produk & treatment di Nadhifa selalu menggunakan bahan yg halal, karena kami juga sudah memiliki sertifikat halal.',
                        style: TextStyle(fontWeight: FontWeight.w300)),
                  ],
                )),
            Container(height: 15),

            //FAQ6
            Text(
              'Kapan saja jam operasional klinik Nadhifa?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink[200]),
            ),
            Container(height: 5),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text:
                      'Kita punya dua klinik di Bandung dan buka setiap hari loh! 🙂 \n\n',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Ranca Bolang, ',
                        style: TextStyle(color: Colors.pink[300])),
                    TextSpan(
                        text:
                            'alamatnya di Jalan Rancabolang No. 56, Sekejati, Buah Batu, Kota Bandung. \n \n'),
                    TextSpan(
                        text: 'Jam Operasional\n',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    TextSpan(
                        text:
                            'Senin s/d Sabtu : 10.00 – 19.00 WIB. \nMinggu : 10.00 – 16.00 WIB. \n\n'),
                    TextSpan(
                        text: 'Surapati Core, ',
                        style: TextStyle(color: Colors.pink[300])),
                    TextSpan(
                        text:
                            'alamatnya di Jalan Anggrek Boulevard No. 8, Komplek Ruko Surapati Core, Pasirlayung, Cibeunying Kidul, Kota Bandung. \n\n'),
                    TextSpan(
                        text: 'Jam Operasional\n',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    TextSpan(
                        text:
                            'Senin s/d Sabtu : 08.00 – 17.00 WIB. \nMinggu : 08.00 – 12.00 WIB.'),
                  ],
                )),
            Container(height: 15),

            //FAQ7
            Text(
              'Treatment apa ya yang cocok buat wajah saya? ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink[200]),
            ),
            Container(height: 5),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text: 'Saat ini kami memiliki alat khusus yang dapat ',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'menganalisa ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            'kulit kakak! Jadi langsung ketahuan deh treatment yang sesuai dengan kebutuhn kulit kakak. \n\nAtau kakak bisa juga konsultasikan keluhan kulit pada team dokter Nadhifa yang senantiasa melayani dan membantu dengan senang hati. '),
                    TextSpan(
                        text:
                            ' Ayo tunggu apalagi, saatnya berangkat ke Klinik Nadhifa!😉',
                        style: TextStyle(color: Colors.pink[300])),
                  ],
                )),
            Container(height: 15),

            //FAQ8
            Text(
              'Apa kegunaan dari Member Card Nadhifa? ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink[200]),
            ),
            Container(height: 5),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text:
                      'Wih beruntung banget deh kalau punya kartu member Nadhifa! Karena Setiap kakak melakukan transaksi sebesar ',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Rp. 100.000, ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'kakak dapat'),
                    TextSpan(
                        text: ' 1 poin. ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            'Dimana poin itu bisa kalian kumpulin terus ditukar deh pas akhir tahun!\n\nEits gak hanya itu, Nadhifa sering banget mengadakan '),
                    TextSpan(
                        text: 'Special Discount!',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    TextSpan(text: ' buat para member - membernya.'),
                    TextSpan(
                      text: 'Seru banget kan, yakin gak ngiler buat daftar member Nadhifa?'
                    ),
                  ],
                )),
            Container(height: 15),

            //FAQ 9
            Text(
              'Apakah treatment dan produk di Nadhifa aman untuk ibu hamil atau menyusui? ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink[200]),
            ),
            Container(height: 5),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text:
                      'Semua produk kami bagi yang sedang menyusui ataupun sedang hamil, ',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'sangatlah aman.',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ' Dan seluruh treatment kami pun aman bagi yang sedang menyusui. \n\nTetapi untuk treatment IPL (Intense Pulsed Light), Laser Blackdoll, Laser Erbium, dan Chemical Peeling '),
                    TextSpan(
                        text: 'tidak dianjurkan ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            'bagi mama yang sedang hamil. Tunggu dedenya lahir dulu yaa kakak! 🖤'),
                    TextSpan(text: 'Selain treatment yang disebut tadi, boleh kok aman. 🙂')
                  ],
                )),
            Container(height: 15),

            //FAQ 10
            Text(
              'Bagaimana cara daftar menjadi reseller resmi Nadhifa? ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink[200]),
            ),

            Container(height: 5),
            RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text:
                      'Wah Mantap! \nTerima kasih telah mau menjadi bagian dari kami! ❣️ \n\nUntuk menjadi reseller resmi Nadhifa, silahkan mengisi form pada link dibawah ini ya!\n',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Nadhifa's Official Reseller",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink[200]),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () {
                          launch(
                              'https://www.nadhifabeauty.com/official-reseller/');
                        },
                    ),
                  ],
                )),
            Container(height: 15),
          ],
        ),
      ),
    );
  }
}
