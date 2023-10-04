import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movien/main_screens.dart';
import 'package:movien/screens/category/detail/datail_screens.dart';
import 'package:solar_icons/solar_icons.dart';

class CategoryScreens extends StatefulWidget {
  const CategoryScreens({super.key});

  @override
  State<CategoryScreens> createState() => _CategoryScreensState();
}

class _CategoryScreensState extends State<CategoryScreens> {
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
    CategoryData(
      title: "Adventure",
      imageAsset: 'assets/data/best1.jpg',
    ),
    CategoryData(
      title: "Biography",
      imageAsset: 'assets/data/best2.png',
    ),
    CategoryData(
      title: "Documentary",
      imageAsset: 'assets/data/best3.png',
    ),
    CategoryData(
      title: "Crime",
      imageAsset: 'assets/data/best4.png',
    ),
    CategoryData(
      title: "Drama",
      imageAsset: 'assets/data/best5.png',
    ),
    CategoryData(
      title: "Family",
      imageAsset: 'assets/data/best6.png',
    ),
    // Tambahkan data kategori lain sesuai kebutuhan
  ];

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
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => MainScreens()),
                        );
                      },
                      child: Icon(
                        SolarIconsOutline.altArrowLeft,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Best choice for you',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: GridView.builder(
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryData {
  final String title;
  final String imageAsset;

  CategoryData({
    required this.title,
    required this.imageAsset,
  });
}
