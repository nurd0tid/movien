import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:iconamoon/iconamoon.dart';

class ProfileScreens extends StatelessWidget {
  const ProfileScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF10152C),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Mengatur bentuk menjadi lingkaran
                      border: Border.all(
                        color: Colors.white, // Warna border putih
                        width: 1.0, // Lebar border 1px
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/bg-profile.png",
                        fit: BoxFit.cover, // Atur tampilan gambar agar sesuai dalam lingkaran
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Tambahkan spasi horizontal di antara gambar dan teks
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wilson Rosser',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '@kangpak_',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10), // Tambahkan spasi horizontal di antara teks dan ikon
                  Icon(
                    IconaMoon.arrowRight2,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(top: 0),
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Apps',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontSize: 12,
                        color: Color(0xFF9098C3),
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Divider(
                      color: Color(0xFF2F375E),
                      thickness: 1.0, // Ketebalan garis
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(
                          SolarIconsOutline.clockCircle,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Watch History',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14,
                            color: Colors.white,
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
                        Icon(
                          SolarIconsOutline.bookmark,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Bookmarks',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      'General',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontSize: 12,
                        color: Color(0xFF9098C3),
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Divider(
                      color: Color(0xFF2F375E),
                      thickness: 1.0, // Ketebalan garis
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(
                          SolarIconsBold.flag,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Feedback',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14,
                            color: Colors.white,
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
                        Icon(
                          SolarIconsOutline.settings,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Settings',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14,
                            color: Colors.white,
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
                        Icon(
                          SolarIconsOutline.questionCircle,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Help Center',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        Icon(
                          SolarIconsBold.logout_2,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Logout',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    SizedBox(height: 120),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Privacy Policy',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontSize: 12,
                                color: Color(0xFFAAB0CA),
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
                            Text(
                              'Terms of Use',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontSize: 12,
                                color: Color(0xFFAAB0CA),
                                fontWeight: FontWeight.w400,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5
                        ),
                        Text(
                          'Privacy Policy',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontSize: 12,
                            color: Color(0xFFAAB0CA),
                            fontWeight: FontWeight.w400,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
