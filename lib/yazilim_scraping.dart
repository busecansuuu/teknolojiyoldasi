import 'package:bitirme_webscraping/haberler.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;

class YazilimWebScraping {
  final String baseUrl = "https://www.teknolojiyoldasi.com/kategori/yazilim/";

  Future<List<Haber>> extractYazilimData(int startPage, int endPage) async {
    List<Haber> haberler = [];

    for (int currentPage = startPage; currentPage <= endPage; currentPage++) {
      try {
        final url = '$baseUrl/page/$currentPage';
        final response = await http.get(Uri.parse(url));

        if (response.statusCode == 200) {
          final html = parser.parse(response.body);
          final container = html.querySelector(".cbp_tmtimeline")!.children;

          for (var element in container) {
            try {
              final div = element
                  .getElementsByClassName("cbp_tmlabel")[0]
                  .getElementsByClassName("cbp_tmtimeline__wr")[0];
              final image = div.querySelector("div div img")!.attributes["src"];
              final haberTitle = div.querySelector("a")!.attributes["title"]!;
              final detailPageLink = div.querySelector("a")!.attributes["href"];

              final detailResponse = await http.get(Uri.parse(detailPageLink!));
              if (detailResponse.statusCode == 200) {
                final detailHtml = parser.parse(detailResponse.body);
                final content = detailHtml.querySelector(".entry__article");
                final images = content!
                    .querySelectorAll("img")
                    .map((element) => element.attributes["src"]!)
                    .toList();
                final paragraphs = content
                    .querySelectorAll("p")
                    .map((element) => element.text.trim())
                    .toList();

                haberler.add(Haber(
                    haberTitle: haberTitle,
                    image: image!,
                    detailLink: detailPageLink,
                    images: images,
                    paragraphs: paragraphs));
              } else {
                throw Exception('Failed to load data from detail page');
              }
            } catch (e) {
              print(e);
            }
          }
        } else {
          throw Exception('Failed to load data for page $currentPage');
        }
      } catch (e) {
        print('Error: $e');
        break;
      }
    }
    return haberler;
  }
}
