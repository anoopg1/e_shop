import 'package:e_shop/core/constants/size_constants.dart';
import 'package:flutter/material.dart';

class WishlistProductWidget extends StatelessWidget {
  const WishlistProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width * 0.40,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"))),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kheight30,
                kheight30,
                Text(
                  "₹ 2500",
                  style: TextStyle(fontSize: 34),
                ),
                kheight10,
                Text("Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
                    style: TextStyle(fontSize: 18)),
                kwidth30,
                ElevatedButton(onPressed: () {}, child: Text("Add to cart"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
