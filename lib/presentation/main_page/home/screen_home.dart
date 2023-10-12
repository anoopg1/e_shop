import 'package:e_shop/application/home/home_bloc.dart';
import 'package:e_shop/core/constants/size_constants.dart';
import 'package:e_shop/presentation/main_page/widgets/bottom_navigation_widget.dart';
import 'package:e_shop/presentation/main_page/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getAllProducts());
    return Scaffold(body: BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.allproducts.length >= 10) {
          return SizedBox(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: state.allproducts.length,
              itemBuilder: (context, index) => ProductWidget(
                index: index,
                imageUrl: state.allproducts[index].image!,
                price: state.allproducts[index].price.toString(),
                productName: state.allproducts[index].title!,
                productDescription: state.allproducts[index].description!,
                id: state.allproducts[index].id!,
              ),
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }
}
