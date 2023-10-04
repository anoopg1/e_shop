import 'package:e_shop/core/constants/size_constants.dart';
import 'package:e_shop/presentation/home/widgets/bottom_navigation_widget.dart';
import 'package:e_shop/presentation/home/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 10,
          itemBuilder: (context, index) => ProductWidget(
            index: index,
          ),
        ),
      ),
     
    );
  }
}
