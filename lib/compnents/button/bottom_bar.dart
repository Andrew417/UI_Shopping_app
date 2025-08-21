import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/core/utils/app_colors.dart';
import 'package:nectar_ui/feature/account/page/account.dart';
import 'package:nectar_ui/feature/explore/page/explore_screen.dart';
import 'package:nectar_ui/feature/favuoriteScreen/page/favScreen.dart';
import 'package:nectar_ui/feature/home/page/home_screen.dart';
import 'package:nectar_ui/feature/mycart/page/mycart_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final _pages = [
    HomeScreen(),
    ExploreScreen(),
    MycartScreen(),
    FavouriteScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/shopSvg.svg',
              colorFilter: ColorFilter.mode(
                _currentIndex == 0 ? AppColors.primaryColor : Colors.black,
                BlendMode.srcIn,
              ),
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/exploreSvg.svg',
              colorFilter: ColorFilter.mode(
                _currentIndex == 1 ? AppColors.primaryColor : Colors.black,
                BlendMode.srcIn,
              ),
            ),

            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/cartSvg.svg',
              colorFilter: ColorFilter.mode(
                _currentIndex == 2 ? AppColors.primaryColor : Colors.black,
                BlendMode.srcIn,
              ),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/favSvg.svg',
              colorFilter: ColorFilter.mode(
                _currentIndex == 3 ? AppColors.primaryColor : Colors.black,
                BlendMode.srcIn,
              ),
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/accountSvg.svg',
              colorFilter: ColorFilter.mode(
                _currentIndex == 4 ? AppColors.primaryColor : Colors.black,
                BlendMode.srcIn,
              ),
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
