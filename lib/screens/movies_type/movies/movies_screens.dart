import 'package:flutter/material.dart';
import 'package:movien/screens/category/detail/datail_screens.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconamoon/iconamoon.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class MoviesScreens extends StatefulWidget {
  const MoviesScreens({super.key});

  @override
  State<MoviesScreens> createState() => _MoviesScreensState();
}

class _MoviesScreensState extends State<MoviesScreens> {
  bool isExpanded = false;

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
                          MaterialPageRoute(builder: (context) => CategoryDetailScreens()),
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
                      'Headshot',
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
                child: ListView(
                  padding: EdgeInsets.only(top: 0),
                  physics: BouncingScrollPhysics(),
                  children: [
                    Container(
                      width: 450, // Lebar gambar
                      height: 180, // Tinggi gambar
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          'assets/data/detail1.jpg',
                          fit: BoxFit.fill, // Sesuaikan agar gambar mengisi Container dengan baik
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Headshot',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Container(
                          height: 24,
                          width: 45,
                          padding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF26336F),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Row(
                            children: [
                              Icon(
                                SolarIconsBold.stars1,
                                color: Color(0xFFFCBB23),
                                size: 14,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                '4.5',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(
                          SolarIconsOutline.clockCircle,
                          color: Color(0xFFFCBB23),
                          size: 14,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '1h 13min',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 12,
                            color: Color(0xFFAAB0CA),
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '2023',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 12,
                            color: Color(0xFFAAB0CA),
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          'Action',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 12,
                            color: Color(0xFFAAB0CA),
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Drama',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 12,
                            color: Color(0xFFAAB0CA),
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Thriller',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 12,
                            color: Color(0xFFAAB0CA),
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SYNOPSIS',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 12,
                            color: Color(0xFFAAB0CA),
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 5),
                        isExpanded
                          ? Text(
                              "Headshot is an Indonesian action movie released in December 2016. The movie was directed by Mo Brothers.This Thai crime noir tells the story of Tul, a hitman who wakes up from a coma to realize that he's now seeing everything upside down.",
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          : Text(
                              "Headshot is an Indonesian action movie released in December 2016. The movie was directed by Mo Brothers.This Thai crime noir tells the story of Tul, a hitman who wakes up from a coma to realize that he's now seeing everything upside down.",
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                              maxLines: 3, // Change the number of lines to show initially
                              overflow: TextOverflow.ellipsis,
                            ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                          child: Text(
                            isExpanded ? "Less" : "More",
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontSize: 12,
                              color: Color(0xFFFCBB23), // Change the color to your preference
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {

                          },
                          icon: const Icon(
                            SolarIconsBold.playCircle,
                            size: 16,
                            color: Color(0xFF10152C),
                          ),
                          label: Text(
                            "Play Movie",
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontSize: 14,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFFCBB23), // Warna tombol
                            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 50), // Padding atas/bawah dan kiri/kanan
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // Border radius
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          child: Container(
                            height: 48,
                            width: 60,
                            child: Column(
                              children: [
                                Icon(
                                  IconaMoon.signPlusCircle,
                                  size: 24,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Watchlist",
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontSize: 12,
                                    color: Color(0xFF9098C3),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        ),
                        GestureDetector(
                          child: Container(
                            height: 48,
                            width: 60,
                            child: Column(
                              children: [
                                Icon(
                                  EvaIcons.share,
                                  size: 24,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Share",
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontSize: 12,
                                    color: Color(0xFF9098C3),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Similiar Movies",
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 12, left: 12),
                              child: ClipRRect(
                                child: Image.asset(
                                  "assets/data/best1.png",
                                  fit: BoxFit.fill, // Memastikan gambar melebar di dalam kotak
                                  height: 150,
                                  width: 100,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 12, left: 12),
                              child: ClipRRect(
                                child: Image.asset(
                                  "assets/data/best2.png",
                                  fit: BoxFit.fill, // Memastikan gambar melebar di dalam kotak
                                  height: 150,
                                  width: 100,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 12, left: 12),
                              child: ClipRRect(
                                child: Image.asset(
                                  "assets/data/best3.png",
                                  fit: BoxFit.fill, // Memastikan gambar melebar di dalam kotak
                                  height: 150,
                                  width: 100,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 12, left: 12),
                              child: ClipRRect(
                                child: Image.asset(
                                  "assets/data/best4.png",
                                  fit: BoxFit.fill, // Memastikan gambar melebar di dalam kotak
                                  height: 150,
                                  width: 100,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 12, left: 12),
                              child: ClipRRect(
                                child: Image.asset(
                                  "assets/data/best5.png",
                                  fit: BoxFit.fill, // Memastikan gambar melebar di dalam kotak
                                  height: 150,
                                  width: 100,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
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
