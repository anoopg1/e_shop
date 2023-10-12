import 'package:e_shop/presentation/product_details/product_details.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget(
      {super.key,
      required this.index,
      required this.imageUrl,
      required this.price,
      required this.productName,
      required this.productDescription,
      required this.id});
  final int index;
  final String imageUrl;
  final String price;
  final String productName;
  final String productDescription;
  final int id;

  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ScreenProductDetails(
            index: index,
            price: "₹ $price",
            imageUrl: imageUrl,
            productName: productName,
            productDescription: productDescription,
            id: id,
          ),
        ));
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: deviceheight * 0.13,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(imageUrl))),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "₹ $price",
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(productName),
            )
          ],
        ),
      ),
    );
  }
}
