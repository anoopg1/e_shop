import 'package:e_shop/core/constants/size_constants.dart';
import 'package:e_shop/presentation/wishlist/widgets/wishlist_product_widget.dart';
import 'package:flutter/material.dart';

class ScreenWishlist extends StatelessWidget {
  const ScreenWishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Wishlist"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => WishlistProductWidget(),
          separatorBuilder: (context, index) => kheight20,
          itemCount: 10),
    );
  }
}
