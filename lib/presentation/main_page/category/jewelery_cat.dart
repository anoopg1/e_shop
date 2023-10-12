import 'package:e_shop/application/home/home_bloc.dart';
import 'package:e_shop/presentation/main_page/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JeweleryProductWidget extends StatelessWidget {
  const JeweleryProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getJeweleryProducts());

    return Scaffold(
        appBar: AppBar(
          title: const Text("Jewelery"),
          automaticallyImplyLeading: false,
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.jeweleryProducts.isNotEmpty) {
              return SizedBox(
                child: GridView.builder(
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: state.jeweleryProducts.length,
                  itemBuilder: (context, index) => ProductWidget(
                      index: index,
                      imageUrl: state.jeweleryProducts[index].image!,
                      price: state.jeweleryProducts[index].price.toString(),
                      productName: state.jeweleryProducts[index].title!,
                      productDescription:
                          state.jeweleryProducts[index].description!, id: state.womenClothingProducts[index].id!,),
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
