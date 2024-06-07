import 'package:bitirme_webscraping/chatpage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SondakikaSlider extends StatefulWidget {
  const SondakikaSlider({super.key});

  @override
  State<SondakikaSlider> createState() => _SondakikaSliderState();
}

class _SondakikaSliderState extends State<SondakikaSlider> {
  final myitems = [
    {
      "image": "images/sondakika1.jpg",
      "title":
          "Google, Akıllı Telefonlarına ‘Onarım Modu’ Eklemeye Hazırlanıyor!",
      "content":
          "Samsung, yazılım tarafında önemli işler ortaya koyuyor. Samsung, Galaxy akıllı telefonları için güvenliğe ve gizliliğe odaklanan ‘onarım modunu’ geçtiğimiz temmuz ayında Galaxy S21 telefonlarında test etmeye başlamıştı. Onarım Modu olarak adlandırılan bu araç, kullanıcıların cihazlarını onarıma gönderirken fotoğraflar, mesajlar ve kişiler dahil olmak üzere kişisel bilgilerini korumalarına izin veriyordu. Bu sayede kullanıcılar telefonlarını teknik servise vermeleri durumunda, yetkililer isteseler bile kullanıcını verilerine erişemiyor. Onarım Modu’nu One UI 5‘in yüklü olduğu Galaxy cihazlarında kullanıma sunmaya başladı. Başka bir deyişle, bu özelliğe öncelikle Galaxy S22 kullanıcıları erişecekler. Özelliğin 2023’te daha geniş bir kullanıcı kitlesine açılması hedefleniyor. Google, Android cihazlar için bu özelliği getirmeye hazırlanıyor. Teknoloji devi bu sayede kullanıcıların herhangi bir veriyi yedeklemeden direkt olarak gizleyebilme imkânı sunacak. Bu ‘onarım modunu’ uygulayan kod Android’e eklendi ve yakında erişilebilir olması bekleniyor. Bazı üreticiler Android özelleştirmelerinde ‘onarım moduna’ benzer bir işlev sunuyor olsa da bu yeni özellik oldukça önemli. Google, bu özelliği kendi sistemini kullanan tüm akıllı telefonlara açıyor ve böylece bu işlevi markadan bağımsız olarak herkesin kullanımına sunuyor. Kullanıcılar Ayarlar bölümünde “Pil ve Cihaz Bakımı” menüsünden Onarım Modunu açtığında telefon yeniden başlatılacak ve sonrasında fotoğraflar, videolar, mesajlar, hesaplar gibi kişisel verilere erişim sağlanamayacak, yalnızca telefonla yüklü gelen uygulamalar kullanılabilecek. Yani teknisyenin cihazınızda çalışırken kullanması için telefonunuzda ayrı bir hesap oluşturacaktır. Teknisyen telefonunuzda bulunan uygulamaları da göremez. İhtiyaç duyacağı herhangi bir tanılama yazılımını indirmek için Galaxy Store’u kullanabilir, ancak işleri bittiğinde telefonunuz tüm yeni verileri ve uygulamaları otomatik olarak siler.Telefonunuz onarımdan geldiğinde, kimliğinizi doğrulayarak Onarım Modunu devre disi birakabilirsiniz.",
    },
    {
      "image": "images/sondakika2.png",
      "title": "TBMM’DE Yapay Zeka Dönemi Başlıyor!",
      "content":
          "Türkiye Büyük Millet Meclisi(TBMM) ile TÜBİTAK arasında yürütülen projeye göre Tutanak Bilgi Sistemi(TBS) projesine yapay zeka desteği entegre edildi. Bu projeye göre milletvekillerinin mecliste kürsüde yaptıkları konuşmaları yapay zeka milletvekillerinin sesinden tanıyarak ayırt edecek ve konuşmalarını yazıya aktaracak. Konuyla ilgili açıklamalar yapan TBMM Tutanak Ve Bilgi Hizmetleri Başkanı Muhsine Çevik, birimde 99 stenograf bulunduğunu ifade etti. Osmanlı İmparatorluğu’nun son yıllarından beri meclis kayıtları tutulduğunu belirten Çevik, Meclis’in 27. döneminde toplamda 1073 toplantıda yer aldıklarını ve toplamda 312 bin 402 sayfa tutanak tutulduğunu ifade etti. Yapılan çalışmaların süresi toplamda 8 bin 974 saat 44 dakika tutuyor.Tutanak Bilgi Sistemi’nde, konuşmacı konuştuktan sonra stenograflarımız artık uzman stenograf gibi çalışacak, yazıya dökülmüş metni kontrol edecek. Bizdeki kontroller her zaman çok fazladır. Sonra bilgisayar üzerinden uzmanımız kontrol edecek, sonra başkan yardımcımız. Birleştirme işlemini artık memurumuz yapmayacak. O, ortak kelimeyi bulup birleştirecek. Bu sistem, Tutanak Bilgi Sistemi Projesi. Buradaki yapay zekâ konuşmayı yazıya dökecek ve konuşmacıyı tanıyacak. Bir vekilimiz çıkıp konuştuğunda onun ismini açacak, sesini tanıyacak, konuşmasını da devamında yazacak. Diğer yaptığımız bütün işleri de bu sistemle gerçekleştireceğiz inşallah.” ifadelerini kullandı. ",
    },
    {
      "image": "images/sondakika3.jpg",
      "title": "Whatsapp, Bazı Telefon Modellerinde Artık Çalışmayacak!",
      "content":
          "Popüler anlık mesajlaşma uygulaması WhatsApp desteğini çektiği telefon modellerine yenilerini ekledi. Meta projesi ile yeni bir kimliğe bürünen WhatsApp, Ekim ayından itibaren Android 4.1 ve daha eski sürümlerdeki cihazlara destek vermeyeceğini açıklamıştı. İşte WhatsApp tarafından yapılan açıklamaya göre 24 Ekim’den itibaren bu cihazlar artık WhatsApp’ı çalıştıramayacak; Samsung Galaxy Note 2, HTC ONE, Samsung Galaxy S2, HTC Desire HD, Samsung Galaxy Nexus, HTC Sensation, Samsung Galaxy Tab 10.1, LG Optimus 2X, Nexus 7, LG Optimus G Pro, HTC One, Sony Xperia Z, Motorola Xoom, Sony Xperia S2, Motorola Droid Razr Sony Ericsson Xperia Arc3 Android tarafında durum böyle iken, Apple tarafında ise en az İOS 12 sürümü yüklü olması gerekecek.",
    },
    {
      "image": "images/sondakika4.jpg",
      "title":
          "Çinli Biyoteknoloji Şirketi Sinogene, Evcil Hayvanları Klonluyor!",
      "content":
          "Pekin merkezli Sinogene Biyoteknoloji Şirketi, klonlama işini ticari hale getirmeye çalışıyor. Bir evcil hayvanınız varsa “gitme” vakti geldiğinde yaşanan üzüntü tarif edilemez. Çin’de yaşayan Huang Yu adlı hayvanseverin British Shorthair ırkı kedisi idrar yolu enfeksiyonu sebebiyle hayatını kaybetti. Huang Yu, “Sarımsak” ismini verdiği kedisini tekrar hayatının bir parçası yapmak için ise klonlatmaya karar vermiş. Huang Yu’nun bu konuda yardımına Pekin merkezli Sinogene Biyoteknoloji Şirketi yetişti. Şirket 2018 yılının ağustos ayında denemelere başladı ve Sarımsağın klonu için kediden hücre aldı, üretilen embriyoyu taşıyıcı bir anneye yerleştirdi ve 66 gün süren gebelik süreci sonrası Çin’in ilk klonlanmış kedisi 21 Temmuz’da dünyaya geldi. Şirketin bu başarılı hamlesi ülkede bulunan hayvanseverlerin dikkatini çekti ve Sinogene, hayvan klonları için randevu vermeye başlamış. Normal bir kedinin yaşam süresine sahip olacağı düşünülen Sarımsağın şu an için eski Sarımsakla tek ortak yönü görünüşü. Kedinin hareketleri ilk Sarımsağa göre oldukça farklı. Bu da Yu’nun kedi ile tekrar bir bağ kurması demektir. Ancak Sinogene’nin bu durum için bir çözüm üretmek için çalıştığı söyleniyor. Bir sonraki aşama ise hatıraların kopyalanması: Sinogene, insan-makine arayüz teknolojileri ve yapay zekâ programları kullanarak kaynak hayvanların hatıralarını depolamaya ve bunları hayvanların klonlanmış hallerine aktarmaya çalışıyor. Sinogene eğer bu pürüzü giderebilirse hayvan sahipleri yakın gelecekte, eski hayvanlarının duygusal ve fiziksel kopyalarıyla tekrar bir arada olabilecekler. Sinogene’nin bu yönde bir araştırma ve yatırım yapmasına sebep olarak Çin’deki yaklaşık 73 milyon evcil hayvan sahibi gösteriliyor. Şirket yakında başlayacağı faaliyetleri kapsamında kedi klonu için yaklaşık 36 bin, köpek klonu için ise 54 bin dolar talep ediyor.",
    },
    {
      "image": "images/sondakika5.png",
      "title": "Google Hesaplarına Parola İle Giriş Tarihe Karışıyor!",
      "content":
          "Google hesaplarımıza giriş yaparken girdiğimiz şifreler artık tarihe karışıyor. Google’dan yapılan açıklamaya göre” Siber Güvenlik Farkındalığı Ayı ”kapsamında kullanıcıların” passkeys adı verilen geçiş anahtarlarını kullanmaya başlamasını daha da kolaylaştırıyoruz açıklamasını” yaptı. Google bugün’den itibaren kullanıcılarının hali hazırda kullanılan şifre ile oturum açmalarının yerine geçiş anahtarlarıyla oturum açmasını talep edecek. Şimdi gelin bu passkey(şifre anahtarları) nasıl kullanılır ondan bahsedelim; Passkeys, kullanıcıların daha önceden oluşturdukları biyometrik(yüz tanıma, parmak izi) gibi verileri veya kullanıcı tarafından oluşturulmuş PIN’ den faydalanarak şifre ile oturum açmanın yerine geçmeyi hedefliyor. Passkeys ile oturumunu açtığımız hesabımıza ait veriler yine kullanıcının cihazında kriptolojik(şifrelenmiş) olarak güvenli bir şekilde saklanmış olacak. Google, passkeys ile oturum açma sisteminin kimlik avı gibi saldırılara karşı direniminin yüksek olduğunu ve giriş için kullanılan tek kullanımlık kodlardan daha güvenilir olduğunu belirtti. Passkeys ile açılan hesaba siber saldırganlar tarafından erişim sağlansa bile depolanan verilerimiz biyometrik olarak şifrelendiği için herhangi bir veri kaybına yol açmayacağını belirtti.",
    },
    {
      "image": "images/sondakika6.jpg",
      "title": "Android 14 Güncellemesi Alacak Akıllı Telefonlar!",
      "content":
          "Google merakla beklenen Android 14 güncellemesini yayınladı. Android 14, ilk olarak Google’ın Pixel akıllı telefonlarına sunuldu. Bugün itibarıyla Pixel 4a 5G, Pixel 5, Pixel 5a, Pixel 6, Pixel 6 Pro, Pixel 6a, Pixel 7, Pixel 7 Pro, Pixel 7a, Pixel Tablet ve Pixel Fold cihazlarının kullanıcıları Android 14 sürümünü yükleyebilirler. Önümüzdeki aylarda ise  Samsung, IQOO, Nothing, OnePlus, Oppo, Realme, Sharp, Sony, Tecno, vivo ve Xiaomi gibi Android işletim sistemiyle çalışan akıllı telefon üreten şirketler de yeni güncellemeyi destekleyen modellerinde kullanıcılarına sunacaklar.",
    },
  ];

  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
              itemCount: myitems.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewsDetailPage(
                          image: myitems[index]["image"]!,
                          title: myitems[index]["title"]!,
                          content: myitems[index]["content"]!,
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Column(
                      children: [
                        Image.asset(myitems[index]["image"]!),
                        const SizedBox(height: 10),
                        Text(
                          myitems[index]["title"]!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                height: 250,
                onPageChanged: (index, reason) {
                  setState(() {
                    myCurrentIndex = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsDetailPage extends StatelessWidget {
  final String image;
  final String title;
  final String content;

  const NewsDetailPage(
      {super.key,
      required this.image,
      required this.title,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            title: Text(title, style: const TextStyle(color: Colors.white)),
            iconTheme: const IconThemeData(color: Colors.white),
            actions: [
              IconButton(
                icon: const Icon(Icons.search, color: Colors.white),
                onPressed: () {},
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(image),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              content,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            const SizedBox(
              width: 370,
              height: 300,
              child: ChatPage(),
            )
          ],
        ),
      ),
    );
  }
}
