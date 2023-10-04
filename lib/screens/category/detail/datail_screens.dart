import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movien/screens/category/category_screens.dart';
import 'package:movien/screens/movies_type/movies/movies_screens.dart';
import 'package:solar_icons/solar_icons.dart';

class CategoryDetailScreens extends StatefulWidget {
  const CategoryDetailScreens({super.key});

  @override
  State<CategoryDetailScreens> createState() => _CategoryDetailScreensState();
}

class _CategoryDetailScreensState extends State<CategoryDetailScreens> {
  List<DetailCategoryData> detailCategoryList = [
    DetailCategoryData(
      imageAsset: 'assets/data/best1.jpg',
    ),
    DetailCategoryData(
      imageAsset: 'assets/data/best2.png',
    ),
    DetailCategoryData(
      imageAsset: 'assets/data/best3.png',
    ),
    DetailCategoryData(
      imageAsset: 'assets/data/best4.png',
    ),
    DetailCategoryData(
      imageAsset: 'assets/data/best5.png',
    ),
    DetailCategoryData(
      imageAsset: 'assets/data/best6.png',
    ),
    DetailCategoryData(
      imageAsset: 'assets/data/best1.jpg',
    ),
    DetailCategoryData(
      imageAsset: 'assets/data/best2.png',
    ),
    DetailCategoryData(
      imageAsset: 'assets/data/best3.png',
    ),
    DetailCategoryData(
      imageAsset: 'assets/data/best4.png',
    ),
    DetailCategoryData(
      imageAsset: 'assets/data/best5.png',
    ),
    DetailCategoryData(
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
                          MaterialPageRoute(builder: (context) => CategoryScreens()),
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
                      'Action',
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
                    itemCount: detailCategoryList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => MoviesScreens()),
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
                                  child: Image.asset(
                                    detailCategoryList[index].imageAsset,
                                    fit: BoxFit.fill, // Sesuaikan agar gambar mengisi Container dengan baik
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

class DetailCategoryData {
  final String imageAsset;

  DetailCategoryData({
    required this.imageAsset,
  });
}
