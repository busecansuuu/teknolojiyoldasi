import 'package:bitirme_webscraping/chatpage.dart';
import 'package:bitirme_webscraping/drawer.dart';
import 'package:bitirme_webscraping/slider.dart';
import 'package:flutter/material.dart';
import 'package:bitirme_webscraping/haberler.dart';
import 'package:bitirme_webscraping/web_scraping.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Teknolojik Haber App',
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: const HaberListesi(),
    );
  }
}

class HaberListesi extends StatefulWidget {
  const HaberListesi({super.key});

  @override
  _HaberListesiState createState() => _HaberListesiState();
}

class _HaberListesiState extends State<HaberListesi> {
  final WebScraping webScraping = WebScraping();
  int _currentPage = 1;
  final List<Haber> _haberler = [];
  bool _isLoading = false;

  Future<void> _fetchData(int startPage, int endPage) async {
    setState(() {
      _isLoading = true;
    });

    try {
      List<Haber> newData = await webScraping.extractData(startPage, endPage);
      setState(() {
        _haberler.addAll(newData);
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      print('Error: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchData(_currentPage, _currentPage);
  }

  void _loadMoreData() {
    setState(() {
      _currentPage++;
    });
    _fetchData(_currentPage, _currentPage);
  }

  void _showDetailPage(String title, String image, List<String> paragraphs,
      List<String> images) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(image),
                const SizedBox(height: 16),
                for (var paragraph in paragraphs)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(paragraph),
                  ),
                for (var imgUrl in images)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Image.network(imgUrl),
                  ),
                   const SizedBox(height: 8),
              const SizedBox(
                width: 370,height: 300, child: ChatPage(),
              )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            gradient: LinearGradient(
              colors: [Color(0xFFE35621), Color(0xFF1D1715)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: AppBar(
            title: const Text('Teknoloji Yoldaşı',
                style: TextStyle(color: Colors.white)),
            iconTheme: const IconThemeData(color: Colors.white),
            actions: [
              IconButton(
                icon: const Icon(Icons.search, color: Colors.white),
                onPressed: () {
                  // Implement your search functionality here
                },
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'SON DAKİKA',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 183, 82, 75),
            ),
          ),
          const SizedBox(
            height: 200,
            child: SondakikaSlider()
          ),
          const SizedBox(height: 8,),
          Container(
            height: 45,
            width: 500,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFE35621), Color(0xFF1D1715)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: const Center(
              child: Text(
                "Cumhuriyetimizin 100.Yılı Kutlu Olsun!",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Yeni Eklenen Haberler',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 183, 82, 75),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _haberler.length,
              itemBuilder: (_, index) {
                return Card(
                  elevation: 2,
                  margin:  
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: InkWell(
                    onTap: () {
                      _showDetailPage(
                        _haberler[index].haberTitle,
                        _haberler[index].image,
                        _haberler[index].paragraphs,
                        _haberler[index].images,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.network(
                              _haberler[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _haberler[index].haberTitle,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          if (_isLoading)
            const Center(
              child: CircularProgressIndicator(),
            ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: _loadMoreData,
              child: const Text('Daha Fazla Yükle'),
            ),
          ),
        ],
      ),
    );
  }
}
