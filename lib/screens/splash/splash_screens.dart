import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movien/screens/home/home_screens.dart';
import 'package:solar_icons/solar_icons.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF10152C), // Background color
              image: DecorationImage(
                image: AssetImage('assets/images/bg-splash.png'), // Path to your image asset
                fit: BoxFit.fill, // Fill the container
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(
                left: 60,
                right: 60,
                bottom: 60,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png', // Path to your image asset
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Watch lots of premium movies here. Subscribe for now',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontSize: 14,
                      color: Color(0xFFBCBFD1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 35),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomeScreens()),
                      );
                    },
                    icon: const Icon(
                      SolarIconsBold.play,
                      size: 16,
                    ),
                    label: Text(
                      "Let's watch",
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF9098C3), // Warna tombol
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 65), // Padding atas/bawah dan kiri/kanan
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48), // Border radius
                      ),
                    ),
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
