import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF10152C),
        child: Container(
          margin: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 44,
            bottom: 44,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 35,
                  ),
                  Text(
                    "Guest",
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontSize: 16,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), // Rounded border
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF887AA6).withAlpha(20), // Warna shadow dengan opacity 8%
                      offset: Offset(0, 4), // Offset X dan Y
                      blurRadius: 40, // Radius blur
                    ),
                  ],
                  color: Color(0xFF252B44), // Warna latar belakang
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent, // Latar belakang transparan
                    suffixIcon: Icon(
                      Icons.search, // Ikon pencarian
                      color: Color(0xFFA9ADC2),
                    ),
                    hintText: "Search...", // Teks placeholder
                    hintStyle: TextStyle(
                      color: Color(0xFFA9ADC2),
                      fontSize: 16,
                    ),
                     border: InputBorder.none, // Hapus border bawaan
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 16), // Padding di dalam TextField
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
