import 'package:e_shop/application/home/home_bloc.dart';
import 'package:e_shop/presentation/main_page/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ElectronicsProductWidget extends StatelessWidget {
  const ElectronicsProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context)
        .add(const HomeEvent.getElectronicsProducts());

    return Scaffold(
        appBar: AppBar(
          title: const Text("Electronics"),
          automaticallyImplyLeading: false,
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.electronicProducts.isNotEmpty) {
              print(
                  "state.electronicProducts.length :${state.electronicProducts.length} ");
              return SizedBox(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: state.electronicProducts.length,
                  itemBuilder: (context, index) => ProductWidget(
                      index: index,
                      imageUrl: state.electronicProducts[index].image!,
                      price: state.electronicProducts[index].price.toString(),
                      productName: state.electronicProducts[index].title!,
                      productDescription:
                          state.electronicProducts[index].description!),
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
