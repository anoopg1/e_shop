import 'package:e_shop/application/home/home_bloc.dart';
import 'package:e_shop/presentation/main_page/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WomenClothingProductWidget extends StatelessWidget {
  const WomenClothingProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context)
        .add(const HomeEvent.getWomenClothingProducts());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Women Clothing"),
          automaticallyImplyLeading: false,
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.womenClothingProducts.isNotEmpty) {
              return SizedBox(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: state.womenClothingProducts.length,
                  itemBuilder: (context, index) => ProductWidget(
                      index: index,
                      imageUrl: state.womenClothingProducts[index].image!,
                      price:
                          state.womenClothingProducts[index].price.toString(),
                      productName: state.womenClothingProducts[index].title!,
                      productDescription:
                          state.womenClothingProducts[index].description!),
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
