import 'package:e_shop/core/constants/size_constants.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final profileOptions = [
      "Account",
      "My Orders",
      "Refer a friend",
      "Settings",
    ];
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 157, 143, 102),
            height: MediaQuery.of(context).size.height * 0.20,
            // width: MediaQuery.of(context).size.width * 0.90,
            child: Row(
              children: [
                kwidth30,
                CircleAvatar(
                  radius: 55,
                  child: Image.network(
                      "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?size=626&ext=jpg&ga=GA1.2.843125331.1691313888&semt=sph"),
                ),
                kwidth10,
                Text(
                  "Hello Anoop G",
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Padding(
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          profileOptions[index],
                          style: TextStyle(
                              fontSize: 40, color: Colors.grey.shade700),
                        ),
                      )),
                  separatorBuilder: (context, index) => Divider(
                        color: const Color.fromARGB(255, 157, 143, 102),
                      ),
                  itemCount: profileOptions.length))
        ],
      ),
    );
  }
}
