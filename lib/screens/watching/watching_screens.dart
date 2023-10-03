import 'package:flutter/material.dart';
import 'package:movien/screens/home/home_screens.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconamoon/iconamoon.dart';

class WatchingScreens extends StatefulWidget {
  const WatchingScreens({super.key});

  @override
  State<WatchingScreens> createState() => _WatchingScreensState();
}

class _WatchingScreensState extends State<WatchingScreens> {
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
                          MaterialPageRoute(builder: (context) => HomeScreens()),
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
                      'Continue Watching',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontSize: 16,
                        color: Color(0xFFEBEEFD),
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
                child: ListView(
                  // padding: EdgeInsets.only(top: 0),
                  physics: BouncingScrollPhysics(),
                  children: [
                    Container(
                      width: 260,
                      decoration: BoxDecoration(
                        color: Color(0xFF252B44),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        "assets/data/best1.png",
                                        fit: BoxFit.cover, // Memastikan gambar melebar di dalam kotak
                                        height: 88,
                                        width: 100,
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
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Container(
                                  width: double.infinity, // Berikan lebar maksimal
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start, // Ratakan teks ke kiri
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 8), // Menambahkan margin ke kanan pada teks judul
                                        child: Text(
                                          "Acts of Vengeance",
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
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                IconaMoon.trash,
                                color: Colors.red.shade300,
                                size: 24,
                              ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),       
                    Container(
                      width: 260,
                      decoration: BoxDecoration(
                        color: Color(0xFF252B44),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        "assets/data/best2.png",
                                        fit: BoxFit.cover, // Memastikan gambar melebar di dalam kotak
                                        height: 88,
                                        width: 100,
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
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Container(
                                  width: double.infinity, // Berikan lebar maksimal
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start, // Ratakan teks ke kiri
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 8), // Menambahkan margin ke kanan pada teks judul
                                        child: Text(
                                          "Kundo : Age Of The Ramrant",
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
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                IconaMoon.trash,
                                color: Colors.red.shade300,
                                size: 24,
                              ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),       
                    Container(
                      width: 260,
                      decoration: BoxDecoration(
                        color: Color(0xFF252B44),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        "assets/data/best3.png",
                                        fit: BoxFit.cover, // Memastikan gambar melebar di dalam kotak
                                        height: 88,
                                        width: 100,
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
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Container(
                                  width: double.infinity, // Berikan lebar maksimal
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start, // Ratakan teks ke kiri
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 8), // Menambahkan margin ke kanan pada teks judul
                                        child: Text(
                                          "Train To Busan",
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
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                IconaMoon.trash,
                                color: Colors.red.shade300,
                                size: 24,
                              ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),       
                    Container(
                      width: 260,
                      decoration: BoxDecoration(
                        color: Color(0xFF252B44),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        "assets/data/best4.png",
                                        fit: BoxFit.cover, // Memastikan gambar melebar di dalam kotak
                                        height: 88,
                                        width: 100,
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
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Container(
                                  width: double.infinity, // Berikan lebar maksimal
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start, // Ratakan teks ke kiri
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 8), // Menambahkan margin ke kanan pada teks judul
                                        child: Text(
                                          "Rahasia",
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
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                IconaMoon.trash,
                                color: Colors.red.shade300,
                                size: 24,
                              ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),       
                    Container(
                      width: 260,
                      decoration: BoxDecoration(
                        color: Color(0xFF252B44),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        "assets/data/best5.png",
                                        fit: BoxFit.cover, // Memastikan gambar melebar di dalam kotak
                                        height: 88,
                                        width: 100,
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
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Container(
                                  width: double.infinity, // Berikan lebar maksimal
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start, // Ratakan teks ke kiri
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 8), // Menambahkan margin ke kanan pada teks judul
                                        child: Text(
                                          "Headshot",
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
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                IconaMoon.trash,
                                color: Colors.red.shade300,
                                size: 24,
                              ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),       
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}