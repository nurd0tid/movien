import 'package:flutter/material.dart';
import 'package:movien/screens/bookmark/bookmark_screens.dart';
import 'package:movien/screens/download/download_screens.dart';
import 'package:movien/screens/home/home_screens.dart';
import 'package:movien/screens/profille/profile_screens.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:iconamoon/iconamoon.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  List screens = [HomeScreens(), BookmarkScreens(), DownloadScreens(), ProfileScreens()];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10152C),
      body: screens[_selectedIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromARGB(255, 28, 35, 66), // Set background color
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: Stack(
            children: [
              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Color.fromARGB(255, 132, 140, 189), // Set active icon color
                unselectedItemColor: Color.fromARGB(255, 58, 63, 90), // Set inactive icon color
                showUnselectedLabels: false,
                showSelectedLabels: false,
                currentIndex: _selectedIndex,
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                elevation: 0,
                items: const [
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0), // Sesuaikan dengan jumlah padding yang Anda inginkan
                      child: Icon(
                        SolarIconsOutline.homeAngle,
                        size: 30,
                      ),
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0), // Sesuaikan dengan jumlah padding yang Anda inginkan
                      child: Icon(
                        SolarIconsOutline.bookmark,
                        size: 30,
                      ),
                    ),
                    label: 'Bookmark',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0), // Sesuaikan dengan jumlah padding yang Anda inginkan
                      child: Icon(
                        SolarIconsOutline.download,
                        size: 30,
                      ),
                    ),
                    label: 'Download',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0), // Sesuaikan dengan jumlah padding yang Anda inginkan
                      child: Icon(
                        SolarIconsOutline.user,
                        size: 30,
                      ),
                    ),
                    label: 'Profile',
                  ),
                ],
              ),
              // Indicator
              Positioned(
                top: 0,
                left: MediaQuery.of(context).size.width / 4 * _selectedIndex +
                    MediaQuery.of(context).size.width / 8 -
                    15, // Adjust the position based on the selected index
                child: Container(
                  width: 30,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 132, 140, 189), // Indicator color
                    borderRadius: BorderRadius.circular(5),
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
