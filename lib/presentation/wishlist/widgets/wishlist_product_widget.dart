import 'package:e_shop/core/constants/size_constants.dart';
import 'package:flutter/material.dart';

class WishlistProductWidget extends StatelessWidget {
  const WishlistProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(2.0, 2.0), //(x,y)
              blurRadius: 16.0,
            ),
          ],
        ),
        height: MediaQuery.of(context).size.height * 0.30,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.23,
                width: MediaQuery.of(context).size.width * 0.40,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"))),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    kheight30,
                    Text(
                      "₹ 2500",
                      style: TextStyle(fontSize: 34),
                    ),
                    kheight10,
                    Text(
                        "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
                        style: TextStyle(fontSize: 18)),
                    kwidth30,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {}, child: Text("Add to cart")),
                        ElevatedButton(onPressed: () {}, child: Text("Remove")),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
