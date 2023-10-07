import 'package:flutter/material.dart';
import 'package:movien/screens/movies_type/season/season_screens.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconamoon/iconamoon.dart';

class SeasonDetailScreens extends StatefulWidget {
  const SeasonDetailScreens({super.key});

  @override
  State<SeasonDetailScreens> createState() => _SeasonDetailScreensState();
}

class _SeasonDetailScreensState extends State<SeasonDetailScreens> {
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
                          MaterialPageRoute(builder: (context) => SeasonScreens()),
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
                      'Season 1: Headshot',
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
                padding: EdgeInsets.only(top: 0),
                physics: BouncingScrollPhysics(),
                children: [
                  Column(
                    children: [
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Container(
                            width: 100, // Lebar gambar
                            height: 60, // Tinggi gambar
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                'assets/data/eps1.jpg',
                                fit: BoxFit.cover, // Sesuaikan agar gambar mengisi Container dengan baik
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            child: Container(
                              width: double.infinity, // Berikan lebar maksimal
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Ratakan teks ke kiri
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 8), // Menambahkan margin ke kanan pada teks judul
                                    child: Text(
                                      "Epsiode 1: Awal Mula Bencana Dibentuk",
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 20), // Menambahkan margin ke kanan pada teks judul
                                    child: Row(
                                      children: [
                                        Text(
                                          "S1 E1",
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontSize: 10,
                                            color: Color(0xFFAAB0CA),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 4,
                                          width: 4,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "06 Mar 2023",
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontSize: 10,
                                            color: Color(0xFFAAB0CA),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 4,
                                          width: 4,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "1h 2m",
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontSize: 10,
                                            color: Color(0xFFAAB0CA),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 32,
                            width: 32,
                            decoration:
                                BoxDecoration(color: Color(0xFFFCBB23), borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              SolarIconsBold.playCircle,
                              size: 16,
                              color: Color(0xFF10152C),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Container(
                            width: 100, // Lebar gambar
                            height: 60, // Tinggi gambar
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                'assets/data/eps2.jpg',
                                fit: BoxFit.cover, // Sesuaikan agar gambar mengisi Container dengan baik
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            child: Container(
                              width: double.infinity, // Berikan lebar maksimal
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Ratakan teks ke kiri
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 8), // Menambahkan margin ke kanan pada teks judul
                                    child: Text(
                                      "Epsiode 2: Kecelakaan",
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 20), // Menambahkan margin ke kanan pada teks judul
                                    child: Row(
                                      children: [
                                        Text(
                                          "S1 E2",
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontSize: 10,
                                            color: Color(0xFFAAB0CA),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 4,
                                          width: 4,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "06 Mar 2023",
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontSize: 10,
                                            color: Color(0xFFAAB0CA),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 4,
                                          width: 4,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "1h 2m",
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontSize: 10,
                                            color: Color(0xFFAAB0CA),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 32,
                            width: 32,
                            decoration:
                                BoxDecoration(color: Color(0xFFFCBB23), borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              SolarIconsBold.playCircle,
                              size: 16,
                              color: Color(0xFF10152C),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Container(
                            width: 100, // Lebar gambar
                            height: 60, // Tinggi gambar
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                'assets/data/eps3.jpg',
                                fit: BoxFit.cover, // Sesuaikan agar gambar mengisi Container dengan baik
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            child: Container(
                              width: double.infinity, // Berikan lebar maksimal
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Ratakan teks ke kiri
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 8), // Menambahkan margin ke kanan pada teks judul
                                    child: Text(
                                      "Epsiode 3: Mantap Coooyy",
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 20), // Menambahkan margin ke kanan pada teks judul
                                    child: Row(
                                      children: [
                                        Text(
                                          "S1 E3",
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontSize: 10,
                                            color: Color(0xFFAAB0CA),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 4,
                                          width: 4,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "06 Mar 2023",
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontSize: 10,
                                            color: Color(0xFFAAB0CA),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 4,
                                          width: 4,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "1h 2m",
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontSize: 10,
                                            color: Color(0xFFAAB0CA),
                                            fontWeight: FontWeight.w600,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 32,
                            width: 32,
                            decoration:
                                BoxDecoration(color: Color(0xFFFCBB23), borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              SolarIconsBold.playCircle,
                              size: 16,
                              color: Color(0xFF10152C),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
