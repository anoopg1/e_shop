import 'package:e_shop/presentation/product_details/product_details.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ScreenProductDetails(),
        ));
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPghOOd2L-tgW8XsLejVjYKsG4MkF7TgScJA&usqp=CAU"))),
            ),
            const Divider(),
            const Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "₹ 25000",
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Xiaomi 13T Pro"),
            )
          ],
        ),
      ),
    );
  }
}
