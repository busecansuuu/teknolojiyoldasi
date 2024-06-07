import 'package:bitirme_webscraping/Kategoriler/egitim.dart';
import 'package:bitirme_webscraping/Kategoriler/kvkk.dart';
import 'package:bitirme_webscraping/Kategoriler/sosyalmedya.dart';
import 'package:bitirme_webscraping/Kategoriler/teknoloji.dart';
import 'package:bitirme_webscraping/Kategoriler/uruninceleme.dart';
import 'package:bitirme_webscraping/Kategoriler/yazilim.dart';
import 'package:bitirme_webscraping/main.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 151, 134, 127),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Teknoloji Yoldaşı',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 30),
                Image(
                  image: AssetImage("images/logo.png"),
                  height: 50,
                ),
              ],
            ),
          ),
          buildListTile('Anasayfa', Icons.home, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HaberListesi()),
            );
          }),
          const Divider(),
          buildListTile('Teknoloji', Icons.devices, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TeknolojiPage()),
            );
          }),
          const Divider(),
          buildListTile('Eğitim', Icons.school, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EgitimPage()),
            );
          }),
          const Divider(),
          buildListTile('Sosyal Medya', Icons.group, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SosyalMedyaPage()),
            );
          }),
          const Divider(),
          buildListTile('Kişisel Verilerin Korunması', Icons.security, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const KVKKPage()),
            );
          }),
          const Divider(),
          buildListTile('Ürün İnceleme', Icons.rate_review, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UrunIncelemePage()),
            );
          }),
          const Divider(),
          buildListTile('Yazılım', Icons.code, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const YazilimPage()),
            );
          }),
          const Divider(),
        ],
      ),
    );
  }

  Widget buildListTile(String title, IconData icon, Function onTap) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
      leading: Icon(
        icon,
        size: 24,
      ),
      onTap: () {
        Navigator.pop(context); // Drawer'ı kapat
        onTap(); // İlgili işlemi gerçekleştir
      },
    );
  }
}
