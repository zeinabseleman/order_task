import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../../core/colors.dart';
import '../cart_pages/cart_screen.dart';
import '../favorite_pages/favorite_screen.dart';
import '../grocery_pages/grocery_screen.dart';
import '../news_pages/news_screen.dart';
import '../price_pages/price_screen.dart';
import 'controller/navBar_controller.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  List<Widget> _buildScreens() {
    return [
      const GroceryScreen(),
      const NewsScreen(),
      const PriceScreen(),
      const FavoriteScreen(),
      CartScreen()

    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      onItemSelected: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      context,
      controller: controller,
      screens: _buildScreens(),
      popAllScreensOnTapOfSelectedTab: true,
      items: [
        PersistentBottomNavBarItem(
            activeColorPrimary: AppColors.primaryColor,
            icon: Image.asset('assets/icons/grocery.png',
                color: (currentIndex == 0)
                    ? AppColors.primaryColor
                    : AppColors.borderColor),
            title: 'Grocery'),
        PersistentBottomNavBarItem(
            activeColorPrimary: AppColors.primaryColor,
            icon: Image.asset('assets/icons/new.png',
                color: (currentIndex == 1)
                    ? AppColors.primaryColor
                    : AppColors.borderColor),
            title: 'News'),
        PersistentBottomNavBarItem(
            activeColorPrimary: AppColors.primaryColor,
            icon: Image.asset('assets/icons/Group 20775.png',
                color: (currentIndex == 2)
                    ? AppColors.primaryColor
                    : AppColors.borderColor),
            title: ''),
        PersistentBottomNavBarItem(
            activeColorPrimary: AppColors.primaryColor,
            icon: Image.asset('assets/icons/fav.png',
                color: (currentIndex == 3)
                    ? AppColors.primaryColor
                    : AppColors.borderColor),
            title: 'Favorites'),
        PersistentBottomNavBarItem(
          activeColorPrimary: AppColors.primaryColor,
          icon:Image.asset('assets/icons/new.png',
              color: (currentIndex == 4)
                  ? AppColors.primaryColor
                  : AppColors.borderColor),
            title: 'Cart'),
      ],
      confineInSafeArea: true,
      backgroundColor: AppColors.bottomNavBarColor, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
      true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      hideNavigationBarWhenKeyboardShows:
      true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(0.0),
        colorBehindNavBar: Colors.transparent,
      ),
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.easeIn,
        duration: Duration(milliseconds: 400),
      ),
      navBarStyle: NavBarStyle.style13,
      // Choose the nav bar style with this property.
    );
  }
}
