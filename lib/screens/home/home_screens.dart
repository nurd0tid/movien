import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:movien/screens/category/category_screens.dart';
import 'package:movien/screens/category/detail/datail_screens.dart';
import 'package:movien/screens/search/search_screens.dart';


class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  final PageController _pageController = PageController();
  
  List<SliderData> sliderDataList = [
    SliderData(
      imageAsset: 'assets/data/sample1.png',
      title: "WARKOP DKI REBORN 2",
      watchButtonLabel: "Watch 1",
    ),
    SliderData(
      imageAsset: 'assets/data/sample2.png',
      title: "John Wick: Chapter 3 - Parabellum",
      watchButtonLabel: "Watch 2",
    ),
    SliderData(
      imageAsset: 'assets/data/sample3.png',
      title: "The Raid 2: Berandal",
      watchButtonLabel: "Watch 3",
    ),
    // Tambahkan slider data lain jika diperlukan
  ];

  List<SliderContinues> continueWatchingList = [
    SliderContinues(
      imageAsset: 'assets/data/continues1.png',
      title: "Lucy",
    ),
    SliderContinues(
      imageAsset: 'assets/data/continues2.png', // Mengubah gambar pada yang kedua
      title: "21 Grams",
    ),
    // Tambahkan data "Continue Watching" lain jika diperlukan
  ];

  List<CategoryData> categoryDataList = [
    CategoryData(
      title: "Action",
      imageAsset: 'assets/data/best1.jpg',
    ),
    CategoryData(
      title: "Romantic",
      imageAsset: 'assets/data/best2.png',
    ),
    CategoryData(
      title: "Comedy",
      imageAsset: 'assets/data/best3.png',
    ),
    CategoryData(
      title: "Horror",
      imageAsset: 'assets/data/best4.png',
    ),
    CategoryData(
      title: "Fantasy",
      imageAsset: 'assets/data/best5.png',
    ),
    CategoryData(
      title: "Animation",
      imageAsset: 'assets/data/best6.png',
    ),
    // Tambahkan data kategori lain sesuai kebutuhan
  ];


  int currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF10152C),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              // App Bar
              SizedBox(height: 60),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 35,
                    ),
                    InkWell(
                      onTap: () {
                        // Pindah ke layar SearchScreens saat ikon ditekan
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SearchScreens(),
                          ),
                        );
                      },
                      child: Icon(
                        EvaIcons.searchOutline,
                        color: Color(0xFFA9ADC2),
                      ),
                    ),
                  ],
                ),
              ),
              // Content
              SizedBox(height: 16),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Container(
                      height: 200,
                      width: 380,
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: sliderDataList.length,
                        physics: BouncingScrollPhysics(),
                        onPageChanged: (int page) {
                          setState(() {
                            currentPage = page;
                          });
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5), // Adjust horizontal margin
                            child: CustomSliderItem(
                              sliderData: sliderDataList[index],
                              currentPage: currentPage,
                              index: index,
                              sliderDataList: sliderDataList,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < sliderDataList.length; i++)
                          Container(
                            width: 10,
                            height: 10,
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentPage == i ? Colors.white : Colors.white.withOpacity(0.6),
                              border: Border.all(
                                color: Colors.black.withOpacity(0.9),
                                width: 1,
                              ),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Continue watching',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 16,
                            color: Color(0xFFBCBFD1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          EvaIcons.arrowIosForwardOutline,
                          color: Color(0xFFA9ADC2).withOpacity(0.5),
                        ),
                      ],
                    ),
                    // Continue Watching
                    SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 115,
                        width: double.infinity, // Menggunakan lebar maksimum
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal, // Atur scroll direction menjadi horizontal
                          itemCount: continueWatchingList.length,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 260,
                              margin: EdgeInsets.only(right: 16), // Tambahkan margin antar elemen
                              decoration: BoxDecoration(
                                color: Color(0xFF252B44),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 12, left: 12),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(12),
                                          child: Image.asset(
                                            continueWatchingList[index].imageAsset,
                                            fit: BoxFit.cover, // Memastikan gambar melebar di dalam kotak
                                            height: 100,
                                            width: 90,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 35, // Atur tinggi sesuai kebutuhan
                                        width: 35, // Atur lebar sesuai kebutuhan
                                        child: Image.asset(
                                          'assets/images/play-button.png',
                                          fit: BoxFit.contain, // Memastikan gambar berada dalam batas Container
                                        ),
                                      ),
                                    ],
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 8), // Menambahkan margin ke kanan pada teks judul
                                          child: Text(
                                            continueWatchingList[index].title,
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    // Best choice for you
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Best choice for you',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 16,
                            color: Color(0xFFBCBFD1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => CategoryScreens()),
                            );
                          },
                          child: Icon(
                            EvaIcons.arrowIosForwardOutline,
                            color: Color(0xFFA9ADC2).withOpacity(0.5),
                          ),
                        ),    
                      ],
                    ),
                    SizedBox(height: 16),
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // Jumlah kolom dalam grid
                        crossAxisSpacing: 12.0, // Spasi antar kolom
                        mainAxisSpacing: 12.0, // Spasi antar baris
                        childAspectRatio: 5 / 7, // Perbandingan aspek untuk mengatur tinggi dan lebar
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(), // Agar grid tidak dapat di-scroll
                      itemCount: categoryDataList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => CategoryDetailScreens()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  width: 250, // Lebar gambar
                                  height: 550, // Tinggi gambar
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: ColorFiltered(
                                      colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.7),
                                        BlendMode.srcOver,
                                      ),
                                      child: Image.asset(
                                        categoryDataList[index].imageAsset,
                                        fit: BoxFit.fill, // Sesuaikan agar gambar mengisi Container dengan baik
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 10,
                                    ),
                                    child: Center(
                                      child: Text(
                                        categoryDataList[index].title,
                                        style: GoogleFonts.getFont(
                                          'Bebas Neue',
                                          fontSize: 24, // Ubah ukuran font sesuai kebutuhan Anda
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          shadows: [
                                            Shadow(
                                              color: Colors.black.withOpacity(0.9),
                                              offset: Offset(0, 5), // Ubah offset bayangan sesuai kebutuhan Anda
                                              blurRadius: 6, // Ubah radius bayangan sesuai kebutuhan Anda
                                            ),
                                          ],
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                )
              )
              // Custom Slider
            ],
          ),
        )
      ),
    );
  }
}

class SliderData {
  final String imageAsset;
  final String title;
  final String watchButtonLabel;

  SliderData({
    required this.imageAsset,
    required this.title,
    required this.watchButtonLabel,
  });
}

class CustomSliderItem extends StatelessWidget {
  final SliderData sliderData;
  final int currentPage;
  final int index;
  final List<SliderData> sliderDataList;

  CustomSliderItem({
    required this.sliderData,
    required this.currentPage,
    required this.index,
    required this.sliderDataList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              sliderData.imageAsset,
              fit: BoxFit.fill,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF10152C).withOpacity(0.4),
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 70, // Adjust this value to move the title down
                          right: 130,
                          bottom: 5
                        ),
                        child: Text(
                          sliderData.title,
                          style: GoogleFonts.getFont(
                            'Bebas Neue',
                            fontSize: 48,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            height: 0.9,
                            shadows: [
                              Shadow(
                                color: Colors.black.withOpacity(0.6),
                                offset: Offset(0, 4),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SliderContinues {
  final String imageAsset;
  final String title;

  SliderContinues({
    required this.imageAsset,
    required this.title,
  });
}

class CategoryData {
  final String title;
  final String imageAsset;

  CategoryData({
    required this.title,
    required this.imageAsset,
  });
}
