import 'package:flutter/material.dart';
import 'package:travel_app/screens/nav_bar_screens/bar_item_screen.dart';
import 'package:travel_app/screens/nav_bar_screens/home_screen.dart';
import 'package:travel_app/screens/nav_bar_screens/profile_screen.dart';
import 'package:travel_app/screens/nav_bar_screens/search_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _navScreens = [
    const HomeScreen(),
    const BarItemScreen(),
    const SearchScreen(),
    const ProfileScreen()
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navScreens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        onTap: (index) => setState(() {
          _currentIndex = index;
        }),
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(169, 0, 0, 0),
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bar_chart_sharp,
            ),
            label: "bar",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Me",
          ),
        ],
      ),
    );
  }
}
