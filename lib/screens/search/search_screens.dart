import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:iconamoon/iconamoon.dart';

class SearchScreens extends StatefulWidget {
  const SearchScreens({super.key});

  @override
  State<SearchScreens> createState() => _SearchScreensState();
}

class _SearchScreensState extends State<SearchScreens> {
  // Define a list of search results as dynamic data.
  final List<Map<String, dynamic>> searchResults = [
    {
      'title': 'Mile 22',
      'imagePath': 'assets/data/best1.jpg',
      'year': '2023',
      'rating': '4.5',
      'description':
          'Sebuah tim kecil perwira intelijen elit Amerika, bagian dari unit komando taktis rahasia, mencoba menyelundupkan seorang perwira polisi misterius dengan informasi sensitif keluar dari Indonesia.',
    },
    {
      'title': 'Love Is in The Air',
      'imagePath': 'assets/data/best2.png',
      'year': '2023',
      'rating': '4.0',
      'description':
          'Seorang pilot pesawat amfibi yang terbang di daerah tropis mendapati dirinya jatuh cinta pada pria yang dikirim untuk menenggelamkan bisnisnya.',
    },
    {
      'title': 'Poison',
      'imagePath': 'assets/data/best3.png',
      'year': '2023',
      'rating': '3.5',
      'description':
          'Ketika seekor ular berbisa merayap ke perut orang Inggris di India, rekannya dan seorang dokter berlomba menyelamatkannya.',
    },
    {
      'title': 'Rahasia',
      'imagePath': 'assets/data/best4.png',
      'year': '2023',
      'rating': '5.0',
      'description':
          'Ramlah secara misterius kehilangan putranya saat piknik di tepi pantai dan mulai mengalami kejadian aneh yang menghantui membuat suaminya sendiri meragukan kewarasannya.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF10152C),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 10,
            bottom: 10,
          ),
          child: Column(
            children: [
              // Search Inputs
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF887AA6).withAlpha(20),
                      offset: Offset(0, 4),
                      blurRadius: 40,
                    ),
                  ],
                  color: Color(0xFF252B44),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    suffixIcon: Icon(
                      EvaIcons.searchOutline,
                      color: Color(0xFFA9ADC2),
                    ),
                    hintText: "Find your movies...",
                    hintStyle: TextStyle(
                      color: Color(0xFFA9ADC2),
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 5,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    const Icon(
                      SolarIconsBold.courseUp,
                      color: Color(0xFFA9ADC2),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Similar Search',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              // Content Search
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 0, bottom: 0),
                  itemCount: searchResults.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final result = searchResults[index];
                    return Container(
                      height: 160,
                      width: 350,
                      margin: EdgeInsets.only(bottom: 10),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  result['imagePath'],
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: 100,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          result['title'],
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Icon(
                                        SolarIconsOutline.bookmark,
                                        size: 20,
                                        color: Color(0xFF9098C3),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        result['year'],
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        height: 5,
                                        width: 5,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(
                                        SolarIconsBold.stars1,
                                        color: Color(0xFFFCBB23),
                                        size: 14,
                                      ),
                                      SizedBox(width: 2),
                                      Text(
                                        result['rating'],
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
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    result['description'],
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100,
                                    ),
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
