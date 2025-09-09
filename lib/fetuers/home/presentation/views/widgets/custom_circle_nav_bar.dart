import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/custom_item_circler_nave_bar.dart';

class CustomCircleNavBar extends StatefulWidget {
  const CustomCircleNavBar({super.key});

  @override
  State<CustomCircleNavBar> createState() => _CustomCircleNavBarState();
}

class _CustomCircleNavBarState extends State<CustomCircleNavBar> {
  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return CircleNavBar(
      activeIcons: const [
        Icon(Icons.menu, color: Colors.white),
        Icon(Icons.shopping_bag, color: Colors.white),
        Icon(Icons.home, color: Colors.white, size: 34),
        Icon(Icons.person, color: Colors.white),
        Icon(Icons.menu_open_sharp, color: Colors.white),
      ],
      inactiveIcons: const [
        CustomItemCirclerNaveBar(title: 'Menu', icon: Icons.menu),
        CustomItemCirclerNaveBar(title: 'Offers', icon: Icons.shopping_bag),
        CustomItemCirclerNaveBar(title: 'Home', icon: Icons.home),
        CustomItemCirclerNaveBar(title: 'Profile', icon: Icons.person),
        CustomItemCirclerNaveBar(title: 'More', icon: Icons.menu_open_sharp),
      ],
      color: Colors.white,
      circleColor: Colors.white,
      height: 60,
      circleWidth: 60,
      activeIndex: _currentIndex, // استخدم activeIndex بدلاً من initIndex
      onTap: (index) {
        // استخدم onTap بدلاً من onChanged
        setState(() {
          _currentIndex = index;
        });
      },
      shadowColor: Colors.black,
      circleShadowColor: Colors.white,
      elevation: 5,
      circleGradient: const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [kMainColor, kMainColor],
      ),
      // padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
      // cornerRadius: const BorderRadius.only(
      //   topLeft: Radius.circular(8),
      //   topRight: Radius.circular(8),
      //   bottomRight: Radius.circular(24),
      //   bottomLeft: Radius.circular(24),
      // ),
      // gradient: const LinearGradient(
      //   begin: Alignment.topRight,
      //   end: Alignment.bottomLeft,
      //   colors: [Colors.blue, Colors.red],
      // ),
    );
  }
}
