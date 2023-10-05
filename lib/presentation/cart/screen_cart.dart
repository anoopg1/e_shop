import 'package:e_shop/core/constants/size_constants.dart';
import 'package:e_shop/presentation/cart/widgets/cart_product_widget.dart';
import 'package:flutter/material.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
          ],
          automaticallyImplyLeading: false,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => CartproductWidget(),
            separatorBuilder: (context, index) => kheight20,
            itemCount: 10),
        floatingActionButton: SizedBox(
          height: 50,
          width: 300,
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Total"),
                    Text("25000"),
                  ],
                ),
                kwidth30,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.payment_rounded),
                    Text("Pay"),
                  ],
                )
              ],
            ), //child widget inside this button
            onPressed: () {
              print("Button is pressed.");
              //task to execute when this button is pressed
            },
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},

        //   shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.all(Radius.circular(15.0))),
        // bottomNavigationBar: BottomNavigationBar(items: [
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.attach_money_sharp), label: "2500"),
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.payment_outlined), label: "Pay"),
        // ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
