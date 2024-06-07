import 'package:flutter/material.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.grey[200], // Footer arka plan rengi
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: Image.network(
                'http://www.teknolojiyoldasi.com/wp-content/uploads/2023/09/logoyatay.png',
                height: 50.0, // Logo yüksekliği
                width: 150.0, // Logo genişliği
                // fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          '© 2023 Teknoloji Yoldaşı | Kariyer Mentörünüz',
                          style: TextStyle(
                            fontSize: 12.0, // Yazı boyutu
                            color: Colors.grey[600], // Yazı rengi
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons
                                  .cottage, // Çerez ve Gizlilik Politikamız simgesi
                              size: 20.0,
                              color: Colors.grey[600],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Çerez ve Gizlilik Politikamız linkine yönlendirme işlemleri
                            },
                            child: Text(
                              'Çerez ve Gizlilik Politikamız',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.comment, // İletişim simgesi
                              size: 20.0,
                              color: Colors.grey[600],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // İletişim linkine yönlendirme işlemleri
                            },
                            child: Text(
                              'İletişim',
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
