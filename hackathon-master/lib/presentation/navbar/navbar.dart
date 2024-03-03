import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/presentation/dashboard/dashboard_screen.dart';
import 'package:hackathon/presentation/portfolio/portfolio_screen/portfolio_screen.dart';
import 'package:hackathon/presentation/profile.dart';
import 'package:hackathon/presentation/reward_screen/reward_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int visit = 0;



  @override
  Widget build(BuildContext context) {

    var navBody = [
      const DashBoardScreen(),
      const PortfolioScreen(),
      const RewardScreen(),
      const Profile(),

    ];

     List<TabItem> items = [
      const TabItem(
        icon: Icons.home,
        title: 'Home',
      ),
      const TabItem(
        icon: Icons.calendar_month_outlined,
        title: 'Portfolio',
      ),
      const TabItem(
        icon: Icons.clean_hands,
        title: 'Rewards',
      ),

      const TabItem(
        icon: Icons.person,
        title: 'Profile',
      ),


    ];
    return Scaffold(
      body:   navBody.elementAt(visit),
      bottomNavigationBar: BottomBarFloating(
        items: items,
        backgroundColor: Colors.white,
        color: Color(0xffA9A8AA),
        colorSelected: Color(0xffABD02B),
        indexSelected: visit,
        paddingVertical: 14,
        onTap: (int index) => setState(() {
          visit = index;
        }),
      ),
    );
  }
}
