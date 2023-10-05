import 'package:flutter/material.dart';

class CartproductWidget extends StatelessWidget {
  const CartproductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.22,
        width: double.infinity,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.20,
                width: MediaQuery.of(context).size.height * 0.20,
                color: Colors.amber,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "₹ 2500",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                        "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops")
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Qty"),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.remove)),
                    Text("1"),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                  ],
                ),
                ElevatedButton(onPressed: () {}, child: Text("Remove"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
