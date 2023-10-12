import 'package:e_shop/application/home/home_bloc.dart';
import 'package:e_shop/presentation/main_page/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenClothingProductWidget extends StatelessWidget {
  const MenClothingProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getMenClothingProducts());

    return Scaffold(
        appBar: AppBar(
          title: const Text("Men Clothing"),
          automaticallyImplyLeading: false,
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.menclothingProducts.isNotEmpty) {
              return SizedBox(
                child: GridView.builder(
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: state.menclothingProducts.length,
                  itemBuilder: (context, index) => ProductWidget(
                      index: index,
                      imageUrl: state.menclothingProducts[index].image!,
                      price: state.menclothingProducts[index].price.toString(),
                      productName: state.menclothingProducts[index].title!,
                      productDescription:
                          state.menclothingProducts[index].description!, id: state.womenClothingProducts[index].id!,),
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
