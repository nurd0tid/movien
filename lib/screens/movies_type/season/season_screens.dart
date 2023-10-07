import 'package:flutter/material.dart';
import 'package:movien/screens/category/detail/datail_screens.dart';
import 'package:movien/screens/movies_type/season/detail/detail_screens.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconamoon/iconamoon.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class SeasonScreens extends StatefulWidget {
  const SeasonScreens({super.key});

  @override
  State<SeasonScreens> createState() => _SeasonScreensState();
}

class _SeasonScreensState extends State<SeasonScreens> with SingleTickerProviderStateMixin {
  bool isExpanded = false;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
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
                          decoration: BoxDecoration(color: Color(0xFF26336F), borderRadius: BorderRadius.circular(5)),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
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
                        )),
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
                        )),
                      ],
                    ),
                    SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xFF2F375E), // Warna border bottom yang diinginkan
                            width: 1.0, // Ketebalan border bottom
                          ),
                        ),
                      ),
                      child: TabBar(
                        controller: _tabController,
                        unselectedLabelColor: Color(0xFF2F375E),
                        indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                            width: 2.0, // Thickness of the underline
                            color: Colors.white, // Color for the active tab's underline
                          ),
                        ),
                        tabs: [
                          Tab(
                            child: Text(
                              'Season 1',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Season 2',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Season 3',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 240, // Set a fixed height or adjust as needed
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          // Konten untuk Tab 'Season 1'
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
                                            padding: EdgeInsets.only(
                                                right: 8), // Menambahkan margin ke kanan pada teks judul
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
                                            padding: EdgeInsets.only(
                                                right: 20), // Menambahkan margin ke kanan pada teks judul
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
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFCBB23), borderRadius: BorderRadius.circular(10)),
                                    child: Icon(
                                      SolarIconsBold.playCircle,
                                      size: 16,
                                      color: Color(0xFF10152C),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
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
                                            padding: EdgeInsets.only(
                                                right: 8), // Menambahkan margin ke kanan pada teks judul
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
                                            padding: EdgeInsets.only(
                                                right: 20), // Menambahkan margin ke kanan pada teks judul
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
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFCBB23), borderRadius: BorderRadius.circular(10)),
                                    child: Icon(
                                      SolarIconsBold.playCircle,
                                      size: 16,
                                      color: Color(0xFF10152C),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
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
                                            padding: EdgeInsets.only(
                                                right: 8), // Menambahkan margin ke kanan pada teks judul
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
                                            padding: EdgeInsets.only(
                                                right: 20), // Menambahkan margin ke kanan pada teks judul
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
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFCBB23), borderRadius: BorderRadius.circular(10)),
                                    child: Icon(
                                      SolarIconsBold.playCircle,
                                      size: 16,
                                      color: Color(0xFF10152C),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                          // Konten untuk Tab 'Season 2'
                          Center(
                            child: Text(
                              'Konten untuk Season 2',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          // Konten untuk Tab 'Season 3'
                          Center(
                            child: Text(
                              'Konten untuk Season 3',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => SeasonDetailScreens()),
                        );
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'See All Episode',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 12,
                            color: Color(0xFFAAB0CA),
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
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
                              margin: EdgeInsets.only(right: 5, left: 5),
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
                              margin: EdgeInsets.only(right: 5, left: 5),
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
                              margin: EdgeInsets.only(right: 5, left: 5),
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
                              margin: EdgeInsets.only(right: 5, left: 5),
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
                              margin: EdgeInsets.only(right: 5, left: 5),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
