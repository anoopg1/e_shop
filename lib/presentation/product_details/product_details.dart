import 'package:e_shop/core/constants/size_constants.dart';
import 'package:e_shop/infrastructure/wishlist_repository.dart';
import 'package:flutter/material.dart';

class ScreenProductDetails extends StatelessWidget {
  const ScreenProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          kheight10,
          Container(
            height: MediaQuery.of(context).size.height * 0.50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"))),
          ),
          kheight20,
          Text(
            "₹ 2500",
            style: TextStyle(fontSize: 30),
          ),
          kheight20,
          Text(
            "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
            style: TextStyle(fontSize: 30),
          ),
          kheight20,
          Text(
            "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.justify,
          ),
          kheight20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.050,
                width: MediaQuery.of(context).size.width * 0.40,
                child: ElevatedButton(
                    onPressed: () {
                      addToWishlist("1");
                    },
                    child: const Text("Add to Wishlist")),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.050,
                width: MediaQuery.of(context).size.width * 0.40,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Add to Cart")),
              )
            ],
          )
        ],
      ),
    );
  }
}
