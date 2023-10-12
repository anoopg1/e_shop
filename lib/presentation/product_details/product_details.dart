import 'package:e_shop/core/constants/size_constants.dart';
import 'package:e_shop/infrastructure/wishlist_repository.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ScreenProductDetails extends StatelessWidget {
  const ScreenProductDetails(
      {super.key,
      required this.index,
      required this.price,
      required this.imageUrl,
      required this.productName,
      required this.productDescription,
      required this.id});
  final int index;
  final String price;
  final String imageUrl;
  final String productName;
  final String productDescription;
  final int id;

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
                    fit: BoxFit.fill, image: NetworkImage(imageUrl))),
          ),
          kheight20,
          Text(
            price,
            style: TextStyle(fontSize: 30),
          ),
          kheight20,
          Text(
            productName,
            style: TextStyle(fontSize: 30),
          ),
          kheight20,
          Text(
            productDescription,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.justify,
          ),
          kheight20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.050,
                width: MediaQuery.of(context).size.width * 0.40,
                child: ElevatedButton(
                    onPressed: () {
                      // addToWishlist("1");

                      DatabaseReference databaseReference =
                          FirebaseDatabase.instance.ref();
                      databaseReference.child('users').child('user1').set({
                        'name': 'John Doe',
                        'email': 'johndoe@example.com',
                        'age': 30,
                        'wishlist': []
                      });
                    },
                    child: const Text("Add to Wishlist")),
              ),
              SizedBox(
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
