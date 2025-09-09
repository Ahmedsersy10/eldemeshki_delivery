import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:eldemeshki_delivery/fetuers/more/presentation/views/more_view.dart';
import 'package:eldemeshki_delivery/fetuers/offers/presentation/views/offers_view.dart';
import 'package:eldemeshki_delivery/fetuers/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/custom_item_circler_nave_bar.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/home_view_body.dart';
import 'package:eldemeshki_delivery/fetuers/menu/presentation/views/menu_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 2;

  // احتفظ بكل Navigator في متغير ثابت حتى لا يُعاد بناؤه كل مرة
  // late final List<Widget> _screens;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  List<Widget> get _screens => [
    _buildTabNavigator(const MenuView(), 0),
    _buildTabNavigator(const OffersView(), 1),
    _buildTabNavigator(const HomeViewBody(), 2),
    _buildTabNavigator(const ProfileView(), 3),
    _buildTabNavigator(const MoreView(), 4),
  ];

  Widget _buildTabNavigator(Widget child, int index) {
    return Navigator(
      key: _navigatorKeys[index],
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (_) => child);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;

        final navigator = _navigatorKeys[_currentIndex].currentState!;
        final isFirstRouteInCurrentTab = !await navigator.maybePop();

        if (isFirstRouteInCurrentTab) {
          if (_currentIndex != 2) {
            setState(() {
              _currentIndex = 2;
            });
          } else {
            // السماح بالخروج من التطبيق
            Navigator.of(context).maybePop();
          }
        }
      },
      child: Scaffold(
        body: IndexedStack(index: _currentIndex, children: _screens),
        bottomNavigationBar: CircleNavBar(
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
          activeIndex: _currentIndex,
          onTap: (index) {
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
        ),
      ),
    );
  }
}


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
