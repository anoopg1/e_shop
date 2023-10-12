import 'package:e_shop/presentation/cart/screen_cart.dart';
import 'package:e_shop/presentation/main_page/category/screen_category.dart';
import 'package:e_shop/presentation/main_page/home/screen_home.dart';
import 'package:e_shop/presentation/main_page/profile/profile.dart';
import 'package:e_shop/presentation/main_page/widgets/bottom_navigation_widget.dart';

import 'package:e_shop/presentation/wishlist/screen_wishlist.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mainScreenList = [ScreenHome(), Screencategory(), ScreenProfile()];
    return ValueListenableBuilder(
      valueListenable: selectedIndex,
      builder: (context, updatedIndex, child) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text("E-Shop"),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ScreenWishlist(),
                    ));
                  },
                  icon: const Icon(Icons.favorite_border_rounded)),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ScreenCart(),
                    ));
                  },
                  icon: const Icon(Icons.shopping_cart_outlined))
            ],
          ),
          body: mainScreenList[updatedIndex],
          bottomNavigationBar: BottomNavigationEshop(),
        );
      },
    );
  }
}
