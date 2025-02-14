import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.onTap,
    required this.selectedMenu,
  }) : super(key: key);

  final Function(MenuState) onTap;
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/Shop Icon.svg",
                    color: MenuState.home == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor,
                  ),
                  onPressed: () {
                    if (selectedMenu != MenuState.home) {
                      onTap(MenuState.home);
                      // Navigator.pushReplacementNamed(
                      //     context, HomeScreen.routeName);
                    }
                  }),
              IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/Heart Icon.svg",
                    color: MenuState.favourite == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor,
                  ),
                  onPressed: () {
                    if (selectedMenu != MenuState.favourite) {
                      onTap(MenuState.favourite);
                      // Navigator.pushReplacementNamed(
                      //     context, FavouriteScreen.routeName);
                    }
                  }),
              IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/Cart Icon.svg",
                    color: MenuState.cart == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor,
                  ),
                  onPressed: () {
                    if (selectedMenu != MenuState.cart) {
                      onTap(MenuState.cart);
                      // Navigator.pushReplacementNamed(
                      //     context, CartScreen.routeName);
                    }
                  }),
              IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/User Icon.svg",
                    color: MenuState.profile == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor,
                  ),
                  onPressed: () {
                    if (selectedMenu != MenuState.profile) {
                      onTap(MenuState.profile);
                      // Navigator.pushReplacementNamed(
                      //     context, ProfileScreen.routeName);
                    }
                  }),
            ],
          )),
    );
  }
}
